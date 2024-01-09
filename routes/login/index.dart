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

var user = <String, dynamic>{};

Future<Response> _Login(RequestContext context) async {
  try {
    final json = await context.request.json() as Map<String, dynamic>;
    final phone = json['phone'] as String?;
    final password = json['password'] as String?;

    if (phone == null || password == null) {
      return Response.json(
          body: {'message': 'input username or password'},
          statusCode: HttpStatus.badRequest);
    }

    final prisma = context.read<PrismaClient>();
    final userlogin = await prisma.user.findFirst(
      where: UserWhereInput(
        phone: StringNullableFilter(equals: phone),
        password: StringNullableFilter(equals: _hashPassword(password)),
      ),
    );
    print(userlogin);
    if (userlogin == null) {
      return Response.json(body: {'message': 'User not found'});
    }
    final jwt = JWT(userlogin.id);
    // ignore: lines_longer_than_80_chars
    final token = jwt.sign(SecretKey('photoapitest'),
        expiresIn: const Duration(minutes: 1));
    user = <String, dynamic>{
      'id': userlogin.id,
      'fname': userlogin.fname,
      'lname': userlogin.lname,
      'email': userlogin.email,
      'phone': userlogin.phone,
      'profile': userlogin.profile,
      'role': userlogin.role
    };
    return Response.json(
      body: {
        'code': 0,
        'message': 'success',
        'Data': {
          'token': token,
          'user': {
            'id': userlogin.id,
            'fname': userlogin.fname,
            'lname': userlogin.lname,
            'email': userlogin.email,
            'phone': userlogin.phone,
            'profile': userlogin.profile,
            'role': userlogin.role
          }
        },
      },
    );
  } catch (e) {
    return Response.json(body: {
      'code': 1,
      'message': e,
      'Data': {},
    });
  }
}

String _hashPassword(String password) {
  final encodePassword = utf8.encode(password);
  return sha256.convert(encodePassword).toString();
}

Future<Response> _getCurrentUser(RequestContext context) async {
  try {
    final userid = user['id'] as int;
    final prisma = context.read<PrismaClient>();
    final currentUser = await prisma.user
        .findFirst(where: UserWhereInput(id: IntFilter(equals: userid)));

    final current = <String, dynamic>{
      'id': currentUser!.id,
      'fname': currentUser.fname,
      'lname': currentUser.lname,
      'email': currentUser.email,
      'phone': currentUser.phone,
      'profile': currentUser.profile,
      'role': currentUser.role,
      'created_at': currentUser.createdAt.toString(),
      'updated_at': currentUser.updatedAt.toString()
    };
    if (current == null) {
      return Response.json(body: {
        'code': 1,
        'message': 'current user not found',
        'Data': {},
      });
    }

    return Response.json(body: {
      'code': 0,
      'message': 'success',
      'Data': current,
    });
  } catch (e) {
    return Response.json(body: {
      'code': 1,
      'message': e,
      'Data': {},
    });
  }
}
