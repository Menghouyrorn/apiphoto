import 'package:dart_frog/dart_frog.dart';
import 'package:photo_api/src/generated/prisma/prisma_client.dart';

Future<Response> onRequest(RequestContext context) async{
  return switch(context.request.method){
    HttpMethod.post => _getPhotoById(context),
    _=> Future.value(Response(body: 'This is default'))
  };
}

Future<Response> _getPhotoById(RequestContext context) async{
  final json = (await context.request.json()) as Map<String,dynamic>;
  final photoid = json['id'] as int;
  
  final prisma = context.read<PrismaClient>();
  final getphotoById = await prisma.tblPhoto.findFirst(where: TblPhotoWhereInput(id: IntFilter(equals: photoid)));

  final photo =<String,dynamic>{
    'id':getphotoById!.id,
    'albumsid':getphotoById.albumsid,
    'title':getphotoById.title,
    'date':getphotoById.date.toString(),
    'url':getphotoById.url,
    'path':getphotoById.path,
    'created_at':getphotoById.createdAt.toString(),
    'updated_at':getphotoById.updatedAt.toString()
  };
  
  return Response.json(
    body: {
      'photo':photo
    }
  );
}
