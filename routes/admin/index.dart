import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:photo_api/src/generated/prisma/prisma_client.dart';

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.get => _getAdmin(context),
    HttpMethod.post => _createAdmin(context),
    HttpMethod.delete => _deleteAdmin(context),
    _ => Future.value(Response(body: 'this is default'))
  };
}

Future<Response> _getAdmin(RequestContext context) async {
  try {
    final prisma = context.read<PrismaClient>();
    final getadmin = (await prisma.user.findMany(
            where: UserWhereInput(role: StringNullableFilter(equals: 'admin'))))
        .toList();
    var admindata = [];
    for (var i = 0; i < getadmin.length; i++) {
      final userdatastrong = {
        'id': getadmin[i].id,
        'fname': getadmin[i].fname,
        'lname': getadmin[i].lname,
        'email': getadmin[i].email,
        'phone': getadmin[i].phone,
        'profile': getadmin[i].profile,
        'role': getadmin[i].role,
        'created_at': getadmin[i].createdAt.toString(),
        'updated_at': getadmin[i].updatedAt.toString(),
      };
      admindata.add(userdatastrong);
    }
    return Response.json(body: {
      'code': 0,
      'message': 'success',
      'Data': admindata,
    }, statusCode: 201);
  } catch (e) {
    return Response.json(body: {
      'code': 1,
      'message': e,
      'Data': [],
    });
  }
}

Future<Response> _createAdmin(RequestContext context) async {
  try {
    final json = await context.request.json() as Map<String, dynamic>;
    final email = json['email'] as String?;
    final fname = json['fname'] as String?;
    final lname = json['lname'] as String?;
    final profile = "https://cdn-icons-png.flaticon.com/512/3135/3135715.png";
    final password = json['password'] as String?;
    final phone = json['phone'] as String?;
    final role = 'admin';
    final created_at = DateTime.now();
    final updated_at = DateTime.now();

    if (email == null ||
        fname == null ||
        password == null ||
        phone == null ||
        lname == null) {
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
          fname: fname,
          lname: lname,
          profile: profile),
    );

    final admindata = {
      'id': createAdmin.id,
      'fname': createAdmin.fname,
      'lname': createAdmin.lname,
      'email': createAdmin.email,
      'phone': createAdmin.phone,
      'profile': createAdmin.profile,
      'role': createAdmin.role,
      'created_at': createAdmin.createdAt.toString(),
      'updated_at': createAdmin.updatedAt.toString()
    };
    return Response.json(body: {
      'code': 0,
      'message': 'success',
      'Data': admindata,
    }, statusCode: 201);
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

// delete admin

Future<Response> _deleteAdmin(RequestContext context) async {
  try {
    final json = await context.request.json() as Map<String, dynamic>;
    final id = json['id'] as int;

    final prisma = context.read<PrismaClient>();
    final deleteadmin = await prisma.user.delete(
      where: UserWhereUniqueInput(id: id),
    );

    return Response.json(body: {
      'code': 0,
      'message': 'success',
      'Data': deleteadmin,
    }, statusCode: 201);
  } catch (e) {
    return Response.json(body: {
      'code': 1,
      'message': e,
      'Data': {},
    });
  }
}
