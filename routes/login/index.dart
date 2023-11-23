import 'dart:convert';
import 'dart:io';
import 'package:crypto/crypto.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:photo_api/src/generated/prisma/prisma_client.dart';

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.post => _Login(context),
    HttpMethod.get => _getCurrentUser(context),
    _ => Future.value(Response(body: 'this is default'))
  };
}
var user=<String,dynamic>{};

Future<Response> _Login(RequestContext context) async {
  final json = (await context.request.json()) as Map<String, dynamic>;
  final phone = json['phone'] as String?;
  final password = json['password'] as String?;

  if (phone == null || password == null) {
    return Response.json(
        body: {'message': 'input username or password'},
        statusCode: HttpStatus.badRequest);
  }

  final pisma = context.read<PrismaClient>();
  final userlogin = await pisma.user.findFirst(
    where: UserWhereInput(
      phone: StringNullableFilter(equals: phone),
      password: StringNullableFilter(equals: _hashPassword(password)),
    ),
  );

  if (userlogin == null) {
    return Response.json(body: {'message': 'User not found'});
  }
  final jwt = JWT(userlogin.id);
  final token = jwt.sign(SecretKey("photoapi"));
   user = <String, dynamic>{
    'id': userlogin.id,
    'username': userlogin.username,
    'email': userlogin.email,
    'phone': userlogin.phone,
    'role': userlogin.role
  };
  return Response.json(
    body: {'message': 'success', 'token': token},
  );
}
String _hashPassword(String password) {
  final encodePassword = utf8.encode(password);
  return sha256.convert(encodePassword).toString();
}

Future<Response> _getCurrentUser(RequestContext context) async{
  final userid = user['id'] as int;
  final prisma = context.read<PrismaClient>();
  final currentUser = await prisma.user.findFirst(where: UserWhereInput(id: IntFilter(equals: userid)));

  final current =<String,dynamic>{
    'id': currentUser!.id,
    'username': currentUser.username,
    'email': currentUser.email,
    'phone': currentUser.phone,
    'role': currentUser.role,
    'created_at':currentUser.createdAt.toString(),
    'updated_at':currentUser.updatedAt.toString()
  };
  if(current ==null){
    return Response.json(
      body: {
        'message':'current user not found'
      }
    );
  }

  return Response.json(
    body: {
      'currentUser':current
    }
  );
}




