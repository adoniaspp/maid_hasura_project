import 'package:alice/app/repositories/api_user_repository_interface.dart';
import 'package:mobx/mobx.dart';

part 'user_store.g.dart';

class UserStore = UserStoreBase with _$UserStore;

abstract class UserStoreBase with Store {

  final IApiUserRepository apiUserRepository;

  UserStoreBase(this.apiUserRepository);
  
  @observable
  bool wait = false;
  
  Future<int> createUser(Map<String, dynamic> data)
  {
    //alterar o model
    return apiUserRepository.createUser(data);
  }
}