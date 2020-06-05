abstract class IApiUserRepository{
  Future<int> createUser(Map<String, dynamic> userData);
}