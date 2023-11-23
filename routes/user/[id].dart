import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:photo_api/src/generated/prisma/prisma_client.dart';

Future<Response> onRequest(
  RequestContext context,
  String id,
)  async{
 final method = context.request.method;

  if (method == HttpMethod.put) {
    return Response();
  } else if (method == HttpMethod.delete) {
    return Response();
  } else {
    return Future.value(Response(body: "Hello dart frog"));
  }
}





