import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:photo_api/src/generated/prisma/prisma_client.dart';

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.get => _getHistory(context),
    HttpMethod.post => _createHistory(context),
    HttpMethod.put => _updateHistory(context),
    HttpMethod.delete => _deleteHistory(context),
    _ => Future.value(Response(body: 'This is default'))
  };
}

//get all history
Future<Response> _getHistory(RequestContext context) async {
  final prisma = context.read<PrismaClient>();
  final history = (await prisma.tblhistory.findMany()).toList();

  return Response.json(body: {
    'message': 'success',
    'history': history,
  }, statusCode: 201);
}

// create history

Future<Response> _createHistory(RequestContext context) async {
  final json = await context.request.json() as Map<String, dynamic>;
  final userid = json['userid'] as int;
  final photoid = json['photoid'] as int;
  final date = DateTime.now();
  final created_at = DateTime.now();
  final updated_at = DateTime.now();

  if (userid == null || photoid == null) {
    return Response.json(
        body: {'message': 'please input user id or photoid'},
        statusCode: HttpStatus.badRequest);
  }
  final prisma = context.read<PrismaClient>();
  final createhistory = await prisma.tblhistory.create(
    data: TblhistoryCreateInput(
        userid: userid,
        photoid: photoid,
        date: date,
        createdAt: created_at,
        updatedAt: updated_at),
  );
  return Response.json(body: {
    'message': 'success',
    'history': createhistory,
  }, statusCode: 201);
}

// update history

Future<Response> _updateHistory(RequestContext context) async {
  // final json = await context.request.json() as Map<String,dynamic>;
  // final id = json['id'] as int;
  // final
  return Response();
}

// delete history
Future<Response> _deleteHistory(RequestContext context) async {
  final json = await context.request.json() as Map<String,dynamic>;
  final id = json['id'] as int;

  final prisma = context.read<PrismaClient>();
  final deleteuser = await prisma.tblhistory.delete(where: TblhistoryWhereUniqueInput(id: id));
  return Response.json(
    body: {
      'message':'success'
    },
    statusCode: 201
  );
}
