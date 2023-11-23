import 'package:photo_api/src/generated/prisma/prisma_client.dart';

class UserRepository {
  UserRepository(this.db);

  final PrismaClient db;
  Future<User?> createUser({
    required String email,
    required String name,
  }) async {
    final user =
        await db.user.create(data: UserCreateInput(email: email, username: name));
    return user;
  }

  Future<List<User>> getAll() async{
    final list = await db.user.findMany();
    return list.toList();
  }
}
