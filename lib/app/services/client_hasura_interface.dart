import 'package:hasura_connect/hasura_connect.dart';

abstract class IClientHasura
{
  Future<int> mutation(String mutationInsert, Map<String, dynamic> variables);
  Future<Map<String, dynamic>> query(String query, {Map<String, dynamic> variables});
  Future<Snapshot> subscription(String subscription, {Map<String, dynamic> variables});
}