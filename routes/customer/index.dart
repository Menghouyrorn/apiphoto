import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:photo_api/src/generated/prisma/prisma_client.dart';

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.get => _getUser(context),
    HttpMethod.post => _createStaff(context),
    HttpMethod.delete => _DeleteUser(context),
    _ => Future.value(Response(body: 'this is default')),
  };
}

Future<Response> _getUser(RequestContext context) async {
  try {
    final repo = context.read<PrismaClient>();
    final users = (await repo.user.findMany(
      where: const UserWhereInput(
        role: StringNullableFilter(
          equals: 'user',
        ),
      ),
    ))
        .toList();
    final userdata = [];
    for (var i = 0; i < users.length; i++) {
      final userdatastrong = {
        'id': users[i].id,
        'fname': users[i].fname,
        'lname': users[i].lname,
        'email': users[i].email,
        'phone': users[i].phone,
        'profile': users[i].profile,
        'role': users[i].role,
        'created_at': users[i].createdAt.toString(),
        'updated_at': users[i].updatedAt.toString(),
      };
      userdata.add(userdatastrong);
    }

    return Response.json(body: {
      'code': 0,
      'message': 'success',
      'Data': userdata,
    }, statusCode: 201);
  } catch (e) {
    return Response.json(body: {
      'code': 1,
      'message': e,
      'Data': [],
    });
  }
}

Future<Response> _createStaff(RequestContext context) async {
  try {
    final json = await context.request.json() as Map<String, dynamic>;
    final email = json['email'] as String?;
    final fname = json['fname'] as String?;
    final lname = json['lname'] as String?;
    final profile = "https://cdn-icons-png.flaticon.com/512/3135/3135715.png";
    final password = json['password'] as String?;
    final phone = json['phone'] as String?;
    final role = 'user';
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

String _hashPassword(String password) {
  final encodePassword = utf8.encode(password);
  return sha256.convert(encodePassword).toString();
}

//delete user
Future<Response> _DeleteUser(RequestContext context) async {
  try {
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
