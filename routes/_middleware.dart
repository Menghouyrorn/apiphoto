
import 'package:dart_frog/dart_frog.dart';
import 'package:photo_api/src/generated/prisma/prisma_client.dart';


final prisma = PrismaClient(
  datasources:const Datasources(
    db: 'mysql://root:@localhost/photo?schema=public',
  ),
);

Handler middleware(Handler handler) {
  return handler.use(requestLogger()).use(_provideDB());
}

Middleware _provideDB() {
  return provider<PrismaClient>(
    (context) => prisma,
  );
}
