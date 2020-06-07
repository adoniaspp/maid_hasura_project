import 'package:alice/app/repositories/api_user_repository_interface.dart';
import 'package:alice/app/services/user_service_interface.dart';

class ApiUserRepository implements IApiUserRepository
{
  //Consome o service
  final IUserService userService;

  ApiUserRepository(this.userService);

  @override
  Future<int> createUser(Map<String, dynamic> data) {
    //tratar os dados.
    var response = userService.createUser(data);
    return response;
  }
}