import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:photo_api/src/generated/prisma/prisma_client.dart';

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.post => _Signup(context),
    _ => Future.value(Response.json(body: {'message': 'this is default'}))
  };
}

Future<Response> _Signup(RequestContext context) async {
  final json = (await context.request.json()) as Map<String, dynamic>;
  final username = json['username'] as String;
  final email = json['email'] as String;
  final phone = json['phone'] as String;
  final password = json['password'] as String;
  final role = 'user';
  final created_at = DateTime.now();
  final updated_at = DateTime.now();

  if (username == null || email == null || phone == null || password == null) {
    return Response.json(
        body: {'message': 'input the username,email,phone and password'},
        statusCode: HttpStatus.badRequest);
  }

  final prisma = context.read<PrismaClient>();
  final signupuser = await prisma.user.create(
    data: UserCreateInput(
        email: email,
        password: _hashPassword(password),
        createdAt: created_at,
        updatedAt: updated_at,
        phone: phone,
        role: role,
        username: username),
  );

  return Response.json(body: {'message': 'signup success'}, statusCode: 201);
}

String _hashPassword(String password) {
  final encodePassword = utf8.encode(password);
  return sha256.convert(encodePassword).toString();
}
