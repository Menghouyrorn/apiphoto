import 'package:dart_frog/dart_frog.dart';
import 'package:photo_api/src/generated/prisma/prisma_client.dart';

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.post => _getUserByID(context),
    _ => Future.value(Response(body: 'This is default'))
  };
}

Future<Response> _getUserByID(RequestContext context) async {
  final json = (await context.request.json()) as Map<String, dynamic>;
  final userid = json['id'] as int;
  final prisma = context.read<PrismaClient>();
  final getuserbyid = await prisma.user
      .findFirst(where: UserWhereInput(id: IntFilter(equals: userid)));

  final user = <String, dynamic>{
    'id': getuserbyid!.id,
    'username': getuserbyid.username,
    'email': getuserbyid.email,
    'phone': getuserbyid.phone,
    'role': getuserbyid.role,
    'created_at':getuserbyid.createdAt.toString(),
    'updated_at':getuserbyid.updatedAt.toString(),
  };

  return Response.json(body: {'user': user});
}
