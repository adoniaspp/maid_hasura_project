import 'package:hasura_connect/hasura_connect.dart';

import 'client_hasura_interface.dart';

class ClientHasuraService implements IClientHasura 
{
    String url = 'http://192.168.100.4:8080/v1/graphql';

    @override
    Future<int> mutation(String mutationInsert, Map<String, dynamic> variables) async {
        HasuraConnect hasuraConnect = HasuraConnect(url);
        var response = await hasuraConnect.mutation(mutationInsert, variables: variables);
        return response;
    }
    
    @override
    Future<Map<String, dynamic>> query(String query, {Map<String, dynamic> variables}) async {
        HasuraConnect hasuraConnect = HasuraConnect(url);
        var response = await hasuraConnect.query(query, variables: variables);
        return response;
    }
  
    @override
    Future<Snapshot> subscription(String subscription, {Map<String, dynamic> variables}) async{
        HasuraConnect hasuraConnect = HasuraConnect(url);
        var response = await hasuraConnect.subscription(subscription, variables: variables);
        return response;
    }

 
  
  
}
