import 'package:hasura_connect/hasura_connect.dart';

abstract class IUserService
{
  Future<int> createUser(Map<String, dynamic> data);
  Future<Map<String, dynamic>> listUser();
  Future<Snapshot> listenUser({Map<String, dynamic> data});
}