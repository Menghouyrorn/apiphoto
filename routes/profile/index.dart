// ignore_for_file: inference_failure_on_collection_literal

import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:photo_api/src/generated/prisma/prisma_client.dart';

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.put => _updateProfile(context),
    _ => Future.value(
        Response.json(
          body: {
            'code': 1,
            'message': 'This is default',
            'Data': {},
          },
        ),
      ),
  };
}

Future<Response> _updateProfile(RequestContext context) async {
  final user;
  try {
    final json = await context.request.json() as Map<String, dynamic>;
    final id = json['id'] as int?;
    final password = json['password'] as String?;
    final fname = json['fname'] as String?;
    final lname = json['lname'] as String?;
    final profile = json['profile'] as String?;
    final updated_at = DateTime.now();
    if (password == null) {
      final prisma = context.read<PrismaClient>();
      user = await prisma.user.update(
          data: UserUpdateInput(
            fname: NullableStringFieldUpdateOperationsInput(set: fname),
            lname: NullableStringFieldUpdateOperationsInput(set: lname),
            profile: NullableStringFieldUpdateOperationsInput(set: profile),
            updatedAt:
                NullableDateTimeFieldUpdateOperationsInput(set: updated_at),
          ),
          where: UserWhereUniqueInput(id: id));
    } else {
      if (fname == null || lname == null || profile == null) {
        return Response.json(
            body: {'message': 'Please input data'},
            statusCode: HttpStatus.badRequest);
      }
      final prisma = context.read<PrismaClient>();
      user = await prisma.user.update(
        data: UserUpdateInput(
          password: NullableStringFieldUpdateOperationsInput(
            set: _hashPassword(password),
          ),
          fname: NullableStringFieldUpdateOperationsInput(set: fname),
          lname: NullableStringFieldUpdateOperationsInput(set: lname),
          profile: NullableStringFieldUpdateOperationsInput(set: profile),
          updatedAt:
              NullableDateTimeFieldUpdateOperationsInput(set: updated_at),
        ),
        where: UserWhereUniqueInput(id: id),
      );
    }

    return Response.json(body: {
      'code': 0,
      'message': 'success',
      'Data': user,
    });
  } catch (e) {
    return Response.json(body: {
      'code': 1,
      'message': e,
      'Data': {},
    });
  }
}

String _hashPassword(String password) {
  final encodepassword = utf8.encode(password);
  return sha256.convert(encodepassword).toString();
}
