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
    HttpMethod.delete => _deleteStaff(context),
    _ => Future.value(Response(body: 'this is default')),
  };
}

// get staff
Future<Response> _getStaff(RequestContext context) async {
  try {
    final prisma = context.read<PrismaClient>();
    final staff = (await prisma.user.findMany(
            where: UserWhereInput(role: StringNullableFilter(equals: 'staff'))))
        .toList();
    var userdata = [];
    for (var i = 0; i < staff.length; i++) {
      final userdatastrong = {
        'id': staff[i].id,
        'fname': staff[i].fname,
        'lname':staff[i].lname,
        'email': staff[i].email,
        'phone': staff[i].phone,
        'profile':staff[i].profile,
        'role': staff[i].role,
        'created_at': staff[i].createdAt.toString(),
        'updated_at': staff[i].updatedAt.toString(),
      };
      userdata.add(userdatastrong);
    }
    return Response.json(body: {
      'code': 0,
      'message': 'success',
      'Data': userdata,
    }, statusCode: 201);
    ;
  } catch (e) {
    return Response.json(body: {
      'code': 1,
      'message': e,
      'Data': [],
    });
  }
}

// create staff
Future<Response> _createStaff(RequestContext context) async {
  try {
    final json = await context.request.json() as Map<String, dynamic>;
    final email = json['email'] as String?;
    final fname = json['fname'] as String?;
    final lname = json['lname'] as String?;
    final profile = "https://cdn-icons-png.flaticon.com/512/3135/3135715.png";
    final password = json['password'] as String?;
    final phone = json['phone'] as String?;
    final role = 'staff';
    final created_at = DateTime.now();
    final updated_at = DateTime.now();

    if (email == null ||
        fname == null ||
        password == null ||
        phone == null ||
        lname == null
        ) {
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
        fname: fname,
        lname: lname,
        profile: profile
      ),
    );

    final staffdata = {
      'id': staff.id,
      'fname': staff.fname,
      'lname':staff.lname,
      'email': staff.email,
      'phone': staff.phone,
      'profile':staff.profile,
      'role': staff.role,
      'created_at': staff.createdAt.toString(),
      'updated_at': staff.updatedAt.toString()
    };

    return Response.json(body: {
      'code': 0,
      'message': 'success',
      'Data': staffdata,
    }, statusCode: 201);
  } catch (e) {
    return Response.json(body: {
      'code': 1,
      'message': e,
      'Data': {},
    });
  }
}

// convert password to sha256
String _hashPassword(String password) {
  final encodePassword = utf8.encode(password);
  return sha256.convert(encodePassword).toString();
}

// delete staff

Future<Response> _deleteStaff(RequestContext context) async {
  try {
    final json = await context.request.json() as Map<String, dynamic>;
    final id = json['id'] as int;
    final prisma = context.read<PrismaClient>();
    final deleteStaff =
        await prisma.user.delete(where: UserWhereUniqueInput(id: id));
    return Response.json(body: {
      'code': 0,
      'message': 'success',
      'Data': deleteStaff,
    }, statusCode: 201);
  } catch (e) {
    return Response.json(body: {
      'code': 1,
      'message': e,
      'Data': {},
    });
  }
}
