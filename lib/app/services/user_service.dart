import 'package:alice/app/services/user_service_interface.dart';
import 'package:hasura_connect/hasura_connect.dart';

class UserService implements IUserService 
{
    String url = 'http://192.168.100.4:8080/v1/graphql';

    @override
    Future<int> createUser(Map<String, dynamic> data) async {
        HasuraConnect hasuraConnect = HasuraConnect(url);
        String mutationInsert = """mutation MyMutation(\$usuario: usuario_insert_input!) {
  insert_usuario(objects: [\$usuario]) {
    returning {
      id_usuario
    }
  }
}
    """;
        var response = await hasuraConnect.mutation(mutationInsert, variables: data);
        return response['data']['insert_usuario']['returning'][0]['id_usuario'];
    }
    
    @override
    Future<Map<String, dynamic>> listUser() async {
        HasuraConnect hasuraConnect = HasuraConnect(url);
        //var response = await hasuraConnect.query(query, variables: variables);
        //return response;
    }
  
    @override
    Future<Snapshot> listenUser({Map<String, dynamic> data}) async{
        HasuraConnect hasuraConnect = HasuraConnect(url);
        //var response = await hasuraConnect.subscription(subscription, variables: variables);
        //return response;
    }

 
  
  
}
