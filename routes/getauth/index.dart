import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_auth/dart_frog_auth.dart';

Response onRequest(RequestContext context) {
  return Response(body: 'Has Auth user with this token');
}
