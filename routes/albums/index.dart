import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:photo_api/src/generated/prisma/prisma_client.dart';

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
  final prisma = context.read<PrismaClient>();
  final data = (await prisma.tblalbums.findMany()).toList();

  return Response.json(
    body: {
      'albums':data
    }
  );
}

// create data
Future<Response> _createAlbums(RequestContext context) async {
  final json = await context.request.json() as Map<String, dynamic>;
  final userid = json['userid'] as int?;
  final title = json['title'] as String?;
  final created_at = DateTime.now();
  final updated_at = DateTime.now();

  if (userid == null || title == null) {
    return Response.json(
        body: {'message': 'please input data'},
        statusCode: HttpStatus.badRequest);
  }
  final prisma = context.read<PrismaClient>();
  final albums = await prisma.tblalbums.create(
    data: TblalbumsCreateInput(
      userid: userid,
      title: title,
      createdAt: created_at,
      updatedAt: updated_at,
    ),
  );

  return Response.json(
      body: {'message': 'create albums success', 'albums': albums},
      statusCode: 201);
}

// update data
Future<Response> _updateAlbums(RequestContext context) async {
  final json = await context.request.json() as Map<String, dynamic>;
  final id = json['id'] as int?;
  final userid = json['userid'] as int?;
  final title = json['title'] as String?;
  final created_at = DateTime.now();
  final updated_at = DateTime.now();

  if (userid == null || title == null) {
    return Response.json(
        body: {'message': 'please input data in text field'},
        statusCode: HttpStatus.badRequest);
  }

  final prisma = context.read<PrismaClient>();
  final updatealbums = await prisma.tblalbums.update(
    data: TblalbumsUpdateInput(
      userid: NullableIntFieldUpdateOperationsInput(set: userid),
      title: NullableStringFieldUpdateOperationsInput(set: title),
      createdAt: NullableDateTimeFieldUpdateOperationsInput(set: created_at),
      updatedAt: NullableDateTimeFieldUpdateOperationsInput(set: updated_at),
    ),
    where: TblalbumsWhereUniqueInput(id: id),
  );

  return Response.json(
      body: {'message': 'Update data success', 'albums': updatealbums},
      statusCode: 201);
}

// delete data
Future<Response> _deleteAlbums(RequestContext context) async {
  final json = await context.request.json() as Map<String, dynamic>;

  final id = json['id'] as int?;

  final prisma = context.read<PrismaClient>();
  final deletealbums =
      await prisma.tblalbums.delete(where: TblalbumsWhereUniqueInput(id: id));

  return Response.json(
      body: {'message': 'Delete success', 'albums': deletealbums},
      statusCode: 201);
}
