// ignore_for_file: lines_longer_than_80_chars

import 'dart:io';
import 'package:dart_frog/dart_frog.dart';
import 'package:photo_api/src/generated/prisma/prisma_client.dart';

import '../login/index.dart';

Future<Response> onRequest(RequestContext context) {
  final method = context.request.method;
  if (method == HttpMethod.get) {
    return _getAll(context);
  } else if (method == HttpMethod.post) {
    return _createAlbums(context);
  } else if (method == HttpMethod.put) {
    return _updateAlbums(context);
  } else if (method == HttpMethod.delete) {
    return _deleteAlbums(context);
  } else {
    return Future.value(Response.json(
        body: {'message': 'Error'}, statusCode: HttpStatus.badGateway));
  }
}

// get data

Future<Response> _getAll(RequestContext context) async {
  try {
    final prisma = context.read<PrismaClient>();
    final data = (await prisma.tblalbums.findMany()).toList();

    return Response.json(body: {
      'code': 0,
      'message': 'success',
      'Data': data,
    });
  } catch (e) {
    return Response.json(body: {
      'code': 1,
      'message': e,
      'Data': [],
    });
  }
}

// create data
Future<Response> _createAlbums(RequestContext context) async {
  try {
    final json = await context.request.json() as Map<String, dynamic>;
    final idfolder = json['idfolder'] as String;
    final title = json['title'] as String?;
    final created_at = DateTime.now();
    final updated_at = DateTime.now();

    if (title == null) {
      return Response.json(
          body: {'message': 'please input data'},
          statusCode: HttpStatus.badRequest);
    }
    final prisma = context.read<PrismaClient>();
    final albums = await prisma.tblalbums.create(
      data: TblalbumsCreateInput(
        idfolder: idfolder,
        title: title,
        createdAt: created_at,
        updatedAt: updated_at,
      ),
    );
    return Response.json(body: {
      'code': 0,
      'message': 'success',
      'Data': albums,
    }, statusCode: 201);
  } catch (e) {
    return Response.json(body: {
      'code': 1,
      'message': e,
      'Data': {},
    });
  }
}

// update data
Future<Response> _updateAlbums(RequestContext context) async {
  try {
    final json = await context.request.json() as Map<String, dynamic>;
    final id = json['id'] as int?;
    final userid = json['userid'] as int?;
    final title = json['title'] as String?;
    final updateOption = json['update'] as String?;
    final created_at = DateTime.now();
    final updated_at = DateTime.now();
    dynamic updatealbums;
    if (updateOption == 'update') {
      final prisma = context.read<PrismaClient>();
      updatealbums = await prisma.tblalbums.update(
        data: TblalbumsUpdateInput(
          title: NullableStringFieldUpdateOperationsInput(set: title),
          updatedAt:
              NullableDateTimeFieldUpdateOperationsInput(set: updated_at),
        ),
        where: TblalbumsWhereUniqueInput(id: id),
      );
    } else if (updateOption == 'updateUserid') {
      final prisma = context.read<PrismaClient>();
      updatealbums = await prisma.tblalbums.updateMany(
        data: TblalbumsUpdateManyMutationInput(
          userid: NullableIntFieldUpdateOperationsInput(set: userid),
          updatedAt:
              NullableDateTimeFieldUpdateOperationsInput(set: updated_at),
        ),
        where: TblalbumsWhereInput(
          id:IntFilter(equals: id),
        ),
      );
    }

    return Response.json(body: {
      'code': 0,
      'message': 'success',
      'Data': updatealbums,
    }, statusCode: 201);
  } catch (e) {
    print(e);
    return Response.json(body: {
      'code': 1,
      'message': e,
      'Data': {},
    });
  }
}

// delete data
Future<Response> _deleteAlbums(RequestContext context) async {
  try {
    final json = await context.request.json() as Map<String, dynamic>;

    final id = json['id'] as int?;

    final prisma = context.read<PrismaClient>();
    final deletealbums =
        await prisma.tblalbums.delete(where: TblalbumsWhereUniqueInput(id: id));

    return Response.json(body: {
      'code': 0,
      'message': 'success',
      'Data': deletealbums,
    }, statusCode: 201);
  } catch (e) {
    return Response.json(body: {
      'code': 1,
      'message': e,
      'Data': {},
    });
  }
}
