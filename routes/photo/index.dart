// ignore_for_file: lines_longer_than_80_chars

import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:photo_api/src/generated/prisma/prisma_client.dart';

Future<Response> onRequest(RequestContext context) {
  final method = context.request.method;
  if (method == HttpMethod.get) {
    return _getAll(context);
  } else if (method == HttpMethod.post) {
    return _createPhoto(context);
  } else if (method == HttpMethod.delete) {
    return _DeletePhoto(context);
  }else if(method == HttpMethod.put){
    return _UpdatePhoto(context);
  } 
  else {
    return Future.value(Response.json(
        body: {'message': 'Error'}, statusCode: HttpStatus.badRequest));
  }
}

// get data
Future<Response> _getAll(RequestContext context) async {
  final prisma = context.read<PrismaClient>();
  final photo = (await prisma.tblPhoto.findMany()).toList();

  return Response.json(
    body: {
      'photo':photo
    }
  );
}

// insert data
Future<Response> _createPhoto(RequestContext context) async {
  final json = await context.request.json() as Map<String, dynamic>;
  final idalbum = json['albumsid'] as int?;
  final title = json['title'] as String?;
  final date = DateTime.now();
  final url = json['url'] as String?;
  final path = json['path'] as String?;
  final created_at = DateTime.now();
  final updated_at = DateTime.now();

  if (title == null || url == null) {
    return Response.json(
        body: {'message': 'add some data'}, statusCode: HttpStatus.badRequest);
  }
  final prisma = context.read<PrismaClient>();
  final photodata = await prisma.tblPhoto.create(
      data: TblPhotoCreateInput(
          albumsid: idalbum,
          createdAt: created_at,
          date: date,
          path: path,
          title: title,
          updatedAt: updated_at,
          url: url));

  return Response.json(body: {'message': 'Success', 'photo': photodata});
}

// delete data
Future<Response> _DeletePhoto(RequestContext context) async {
  final json = await context.request.json() as Map<String, dynamic>;
  final id = json['id'] as int?;

  if (id == 0) {
    return Response.json(
        body: {'message': 'null id'}, statusCode: HttpStatus.badRequest);
  }

  final prisma = context.read<PrismaClient>();
  final updatephoto =
      await prisma.tblPhoto.delete(where: TblPhotoWhereUniqueInput(id: id));

  return Response.json(
      body: {'message': 'delete data success', 'photo': updatephoto},
      statusCode: 201);
}

// update data
Future<Response> _UpdatePhoto(RequestContext context) async {
  final json = await context.request.json() as Map<String, dynamic>;
  final id = json['id'] as int?;
  final albumid = json['albumsid'] as int?;
  final title = json['title'] as String?;
  final date = DateTime.now();
  final url = json['url'] as String?;
  final path = json['path'] as String?;
  final created_at = DateTime.now();
  final updated_at = DateTime.now();

  if (title == null || url == null || path == null) {
    return Response.json(
        body: {'message': 'Please input data to text field'},
        statusCode: HttpStatus.badRequest);
  }

  final prisma = context.read<PrismaClient>();
  final updatePhoto = await prisma.tblPhoto.update(
    data: TblPhotoUpdateInput(
        albumsid: NullableIntFieldUpdateOperationsInput(set: albumid),
        createdAt: NullableDateTimeFieldUpdateOperationsInput(set: created_at),
        date: NullableDateTimeFieldUpdateOperationsInput(set: date),
        path: NullableStringFieldUpdateOperationsInput(set: path),
        title: NullableStringFieldUpdateOperationsInput(set: title),
        updatedAt: NullableDateTimeFieldUpdateOperationsInput(set: updated_at),
        url: NullableStringFieldUpdateOperationsInput(set: url)),
    where: TblPhotoWhereUniqueInput(id: id),
  );
  return Response.json(
    body: {
      'message':'update success',
      'photo':updatePhoto
    },
    statusCode: 201
  );
}
