import 'package:alice/app/interfaces/client_hasura_interface.dart';
import 'package:hasura_connect/hasura_connect.dart';

class ClientHasuraService implements IClientHasura 
{
  String url = 'http://192.168.100.4:8080/v1/graphql';

  @override
  Future<int> mutationDelete(String mutationDelete, Future<Map<String, dynamic>> variables) {
      
    }
  
    @override
    Future<int> mutationInsert(String mutationInsert, Future<Map<String, dynamic>> variables) {
      
    }
  
    @override
    Future<int> mutationUpdate(String mutationUpdate, Future<Map<String, dynamic>> variables) {
     
    }
  
    @override
    Future<Map<String, dynamic>> query(String query, {Future<Map<String, dynamic>> variables}) {
     
    }
  
    @override
    Future<Map<String, dynamic>> subscription(String subscription, {Future<Map<String, dynamic>> variables}) {
    
  }

 
  
  
}
