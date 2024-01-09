import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_auth/dart_frog_auth.dart';
import 'package:photo_api/src/generated/prisma/prisma_client.dart';

Handler middleware(Handler handler) {
  
  return handler.use(
    _provideUser()
  );
}

Middleware _provideUser(){
  return bearerAuthentication<int>(
    authenticator: (context, token) async{
     return context.read<PrismaClient>().fetchUserFromToken(token);
    },
  );
}