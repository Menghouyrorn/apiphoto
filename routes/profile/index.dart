import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:photo_api/src/generated/prisma/prisma_client.dart';

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.put => _updateProfile(context),
    _ => Future.value(Response.json(body: {
        'code': 1,
        'message': 'This is default',
        'Data': {},
      })),
  };
}

Future<Response> _updateProfile(RequestContext context) async {
  try {
    final json = await context.request.json() as Map<String, dynamic>;
    final id = json['id'] as int?;
    final email = json['email'] as String?;
    final fname = json['fname'] as String?;
    final lname = json['lname'] as String?;
    final profile = json['profile'] as String?;
    final phone = json['phone'] as String?;
    final updated_at = DateTime.now();

    if (email == null ||
        fname == null ||
        lname == null ||
        profile == null ||
        phone == null) {
      return Response.json(
          body: {'message': 'Please add name and email'},
          statusCode: HttpStatus.badRequest);
    }
    final prisma = context.read<PrismaClient>();
    final user = await prisma.user.update(
        data: UserUpdateInput(
          email: StringFieldUpdateOperationsInput(set: email),
          fname: NullableStringFieldUpdateOperationsInput(set: fname),
          lname: NullableStringFieldUpdateOperationsInput(set: lname),
          profile: NullableStringFieldUpdateOperationsInput(set: profile),
          phone: NullableStringFieldUpdateOperationsInput(set: phone),
          updatedAt:
              NullableDateTimeFieldUpdateOperationsInput(set: updated_at),
        ),
        where: UserWhereUniqueInput(id: id));
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
