import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:photo_api/src/generated/prisma/prisma_client.dart';

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.get => _getAdmin(context),
    HttpMethod.post => _createAdmin(context),
    HttpMethod.put => _updateAdmin(context),
    HttpMethod.delete => _deleteAdmin(context),
    _ => Future.value(Response(body: 'this is default'))
  };
}

Future<Response> _getAdmin(RequestContext context) async {
  final prisma = context.read<PrismaClient>();
  final getadmin = (await prisma.user.findMany(
          where: UserWhereInput(role: StringNullableFilter(equals: 'admin'))))
      .toList();
      var admindata=[];
      for (var i = 0; i < getadmin.length; i++) {
    final userdatastrong = {
      'id': getadmin[i].id,
      'username': getadmin[i].username,
      'email': getadmin[i].email,
      'phone': getadmin[i].phone,
      'role': getadmin[i].role,
      'created_at': getadmin[i].createdAt.toString(),
      'updated_at': getadmin[i].updatedAt.toString(),
    };
    admindata.add(userdatastrong);
  }

  return Response.json(body: {
    'message': 'success',
    'admin': admindata,
  }, statusCode: 201);
}

Future<Response> _createAdmin(RequestContext context) async {
  final json = await context.request.json() as Map<String, dynamic>;
  final email = json['email'] as String?;
  final username = json['username'] as String?;
  final password = json['password'] as String?;
  final phone = json['phone'] as String?;
  final role = 'admin';
  final created_at = DateTime.now();
  final updated_at = DateTime.now();

  if (email == null || username == null || password == null || phone == null) {
    return Response.json(body: {
      'message': 'please add email username password and phone',
    }, statusCode: HttpStatus.badRequest);
  }

  final prisma = context.read<PrismaClient>();
  final createAdmin = await prisma.user.create(
    data: UserCreateInput(
      email: email,
      createdAt: created_at,
      password: _hashPassword(password),
      phone: phone,
      role: role,
      updatedAt: updated_at,
      username: username,
    ),
  );
  return Response.json(
      body: {'message': 'create admin success', 'admin': createAdmin},
      statusCode: 201);
}

String _hashPassword(String password) {
  final encodepassword = utf8.encode(password);
  return sha256.convert(encodepassword).toString();
}

// update admin

Future<Response> _updateAdmin(RequestContext context) async {
  final json = await context.request.json() as Map<String, dynamic>;
  final id = json['id'] as int?;
  final email = json['email'] as String?;
  final username = json['username'] as String?;
  final phone = json['phone'] as String?;
  final updated_at = DateTime.now();

  if (email == null || username == null || phone == null) {
    return Response.json(
        body: {'message': 'Please add name and email and phone'},
        statusCode: HttpStatus.badRequest);
  }

  final prisma = context.read<PrismaClient>();
  final updateAdmin = await prisma.user.update(
    data: UserUpdateInput(
      email: StringFieldUpdateOperationsInput(set: email),
      username: NullableStringFieldUpdateOperationsInput(set: username),
      phone: NullableStringFieldUpdateOperationsInput(set: phone),
      updatedAt: NullableDateTimeFieldUpdateOperationsInput(set: updated_at),
    ),
    where: UserWhereUniqueInput(id: id),
  );


  return Response.json(
    body: {
      'message':'update user success',
      'admin':updateAdmin,
    },
    statusCode: 201
  );
}

Future<Response> _deleteAdmin (RequestContext context) async{
  final json = await context.request.json() as Map<String,dynamic>;
  final id = json['id'] as int;

  final prisma = context.read<PrismaClient>();
  final deleteadmin= await prisma.user.delete(where: UserWhereUniqueInput(id: id),);

  return Response.json(
    body: {
      'message':'delete user is success',
    },
    statusCode: 201
  );

}
