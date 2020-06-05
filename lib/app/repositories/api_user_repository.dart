import 'package:alice/app/models/user_model.dart';
import 'package:alice/app/repositories/api_user_repository_interface.dart';
import 'package:alice/app/services/client_hasura_interface.dart';

class ApiUserRepository implements IApiUserRepository
{
  //Consome o service
  final IClientHasura client;

  ApiUserRepository(this.client);

  @override
  Future<int> createUser(Map<String, dynamic> userData) {
    return client.mutation("""""", userData);
  }

 

}