import 'package:alice/app/repositories/apicreateuser_repository_interface.dart';
import 'package:alice/app/services/client_hasura_interface.dart';
import 'package:alice/model/usuario.dart';

class ApiCreateUserRepository implements IApiRepository
{
  //Consome o service
  final IClientHasura client;

  ApiCreateUserRepository(this.client);

  @override
  Future<int> createUser(Usuario user) {
   
  }

 

}