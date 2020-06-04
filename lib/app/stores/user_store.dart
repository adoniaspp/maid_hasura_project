import 'package:mobx/mobx.dart';

part 'user_store.g.dart';

class UserStore = UserStoreBase with _$UserStore;

abstract class UserStoreBase with Store {

  //final IApi
  
  @observable
  bool wait = false;
  
  Future<int> createUser(Map<String, dynamic> userData)
  {

  }
}