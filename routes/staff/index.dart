import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:photo_api/src/generated/prisma/prisma_client.dart';

// default main class
Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.get => _getStaff(context),
    HttpMethod.post => _createStaff(context),
    HttpMethod.put => _updateStaff(context),
    HttpMethod.delete => _deleteStaff(context),
    _ => Future.value(Response(body: 'this is default')),
  };
}

// get staff
Future<Response> _getStaff(RequestContext context) async {
  final prisma = context.read<PrismaClient>();
  final staff = (await prisma.user.findMany(
          where: UserWhereInput(role: StringNullableFilter(equals: 'staff'))))
      .toList();
  var userdata = [];
  for (var i = 0; i < staff.length; i++) {
    final userdatastrong = {
      'id': staff[i].id,
      'username': staff[i].username,
      'email': staff[i].email,
      'phone': staff[i].phone,
      'role': staff[i].role,
      'created_at': staff[i].createdAt.toString(),
      'updated_at': staff[i].updatedAt.toString(),
    };
    userdata.add(userdatastrong);
  }
  return Response.json(
      body: {'message': 'success', 'staff': userdata}, statusCode: 201);
  ;
}

// create staff
Future<Response> _createStaff(RequestContext context) async {
  final json = await context.request.json() as Map<String, dynamic>;
  final email = json['email'] as String?;
  final username = json['username'] as String?;
  final password = json['password'] as String?;
  final phone = json['phone'] as String?;
  final role = 'staff';
  final created_at = DateTime.now();
  final updated_at = DateTime.now();

  if (email == null || username == null || password == null || phone == null) {
    return Response.json(body: {
      'message': 'Plase input email username password phone',
    }, statusCode: HttpStatus.badRequest);
  }
  final prisma = context.read<PrismaClient>();
  final staff = await prisma.user.create(
      data: UserCreateInput(
          email: email,
          createdAt: created_at,
          password: _hashPassword(password),
          phone: phone,
          role: role,
          updatedAt: updated_at,
          username: username));

  return Response.json(body: {
    'message': 'success',
    'staff': staff,
  }, statusCode: 201);
}

// convert password to sha256
String _hashPassword(String password) {
  final encodePassword = utf8.encode(password);
  return sha256.convert(encodePassword).toString();
}

// update staff
Future<Response> _updateStaff(RequestContext context) async {
  final json = await context.request.json() as Map<String, dynamic>;
  final id = json['id'] as int;
  final email = json['email'] as String?;
  final username = json['username'] as String?;
  final phone = json['phone'] as String?;
  final updated_at = DateTime.now();

  if (email == null || username == null || phone == null) {
    return Response.json(body: {
      'message': 'Please input email username and phone',
    }, statusCode: HttpStatus.badRequest);
  }

  final prisma = context.read<PrismaClient>();
  final UpdateStaff = await prisma.user.update(
      data: UserUpdateInput(
        email: StringFieldUpdateOperationsInput(set: email),
        username: NullableStringFieldUpdateOperationsInput(set: username),
        phone: NullableStringFieldUpdateOperationsInput(set: phone),
        updatedAt: NullableDateTimeFieldUpdateOperationsInput(set: updated_at),
      ),
      where: UserWhereUniqueInput(id: id));

  return Response.json(
      body: {'message': 'user update success', 'staff': UpdateStaff},
      statusCode: 201);
}

Future<Response> _deleteStaff(RequestContext context) async {
  final json = await context.request.json() as Map<String, dynamic>;
  final id = json['id'] as int;
  final prisma = context.read<PrismaClient>();
  final deleteStaff =
      await prisma.user.delete(where: UserWhereUniqueInput(id: id));
  return Response.json(body: {
    'message': 'delete staff success',
  }, statusCode: 201);
}
