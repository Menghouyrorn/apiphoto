import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_auth/dart_frog_auth.dart';
import 'package:photo_api/src/generated/prisma/prisma_client.dart';

Handler middleware(Handler handler) {
  return handler.use(_provideAuthentication());
}

Middleware _provideAuthentication() {
  return bearerAuthentication<int>(
    authenticator: (context, token) async {
      print(token);
      return context.read<PrismaClient>().fetchToken(token);
    },
  );
}
