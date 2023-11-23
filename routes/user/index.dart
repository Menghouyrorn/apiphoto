// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:photo_api/src/generated/prisma/prisma_client.dart';

Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;

  if (method == HttpMethod.get) {
    return _getUser(context);
  } else if (method == HttpMethod.post) {
    return _createUser(context);
  } else if (method == HttpMethod.delete) {
    return _DeleteUser(context);
  } else if (method == HttpMethod.put) {
    return _UpdateUser(context);
  } else {
    return Future.value(Response(body: "Hello dart frog"));
  }
}

Future<Response> _getUser(RequestContext context) async {
  final repo = context.read<PrismaClient>();
  final users = (await repo.user.findMany(
          where:
              const UserWhereInput(role: StringNullableFilter(equals: 'user'))))
      .toList();
  var userdata = [];
  for (var i = 0; i < users.length; i++) {
    final userdatastrong = {
      'id': users[i].id,
      'username': users[i].username,
      'email': users[i].email,
      'phone': users[i].phone,
      'role': users[i].role,
      'created_at': users[i].createdAt.toString(),
      'updated_at': users[i].updatedAt.toString(),
    };
    userdata.add(userdatastrong);
  }

  return Response.json(body: {'customer': userdata}, statusCode: 201);
}

Future<Response> _createUser(RequestContext context) async {
  final json = await context.request.json() as Map<String, dynamic>;
  final email = json['email'] as String?;
  final username = json['username'] as String?;
  final password = json['password'] as String?;
  final phone = json['phone'] as String?;
  final role = 'user';
  final created_at = DateTime.now();
  final updated_at = DateTime.now();

  if (email == null || username == null || password == null) {
    return Response.json(
        body: {'message': 'add email and password'},
        statusCode: HttpStatus.badRequest);
  }

  final prisma = context.read<PrismaClient>();
  final user = await prisma.user.create(
      data: UserCreateInput(
          email: email,
          username: username,
          password: _hashPassword(password),
          createdAt: created_at,
          updatedAt: updated_at,
          phone: phone,
          role: role));

  return Response.json(
    body: {'message': 'Success', 'user': user},
  );
}

String _hashPassword(String password) {
  final encodePassword = utf8.encode(password);
  return sha256.convert(encodePassword).toString();
}

//delete user
Future<Response> _DeleteUser(RequestContext context) async {
  final json = await context.request.json() as Map<String, dynamic>;
  final id = json['id'] as int;
  // String? email =json['email'] as String;
  // print(id);

  if (id == 0) {
    return Response.json(
        body: {'message': 'add email and password'},
        statusCode: HttpStatus.badRequest);
  }
  final prisma = context.read<PrismaClient>();
  final user = await prisma.user.delete(where: UserWhereUniqueInput(id: id));

  return Response.json(
      body: {'message': 'user with id: is delete', 'user': user});
}

// update user
Future<Response> _UpdateUser(RequestContext context) async {
  final json = await context.request.json() as Map<String, dynamic>;
  final id = json['id'] as int?;
  final email = json['email'] as String?;
  final username = json['username'] as String?;
  final phone = json['phone'] as String?;
  final updated_at = DateTime.now();

  if (email == null || username == null) {
    return Response.json(
        body: {'message': 'Please add name and email'},
        statusCode: HttpStatus.badRequest);
  }
  final prisma = context.read<PrismaClient>();
  final user = await prisma.user.update(
      data: UserUpdateInput(
        email: StringFieldUpdateOperationsInput(set: email),
        username: NullableStringFieldUpdateOperationsInput(set: username),
        phone: NullableStringFieldUpdateOperationsInput(set: phone),
        updatedAt: NullableDateTimeFieldUpdateOperationsInput(set: updated_at),
      ),
      where: UserWhereUniqueInput(id: id));
  return Response.json(body: {'message': 'user is updated!'});
}
