import 'package:dart_frog/dart_frog.dart';
import 'package:photo_api/src/generated/prisma/prisma_client.dart';

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.post => _getPhotoByAlbumsid(context),
    _ => Future.value(Response(body: 'This is default'))
  };
}

Future<Response> _getPhotoByAlbumsid(RequestContext context) async {
  final json = (await context.request.json()) as Map<String, dynamic>;
  final albumsid = json['albumsid'] as int;

  final prisma = context.read<PrismaClient>();
  final getPhotoByAlbumsId = await prisma.tblPhoto.findMany(
          where: TblPhotoWhereInput(
              albumsid: IntNullableFilter(equals: albumsid)));

  print(getPhotoByAlbumsId.runtimeType);

  return Future.value(
    Response.json(
      body: {
        'photo':getPhotoByAlbumsId.toList()
      }
    )
  );
}
