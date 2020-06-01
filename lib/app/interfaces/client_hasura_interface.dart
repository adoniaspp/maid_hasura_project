abstract class IClientHasura
{
  Future<int> mutationInsert(String mutationInsert, Future<Map<String, dynamic>> variables);
  Future<int> mutationDelete(String mutationDelete, Future<Map<String, dynamic>> variables);
  Future<int> mutationUpdate(String mutationUpdate, Future<Map<String, dynamic>> variables);
  Future<Map<String, dynamic>> query(String query, {Future<Map<String, dynamic>> variables});
  Future<Map<String, dynamic>> subscription(String subscription, {Future<Map<String, dynamic>> variables});
}