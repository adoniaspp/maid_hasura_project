
import 'package:alice/app/models/user_model.dart';

abstract class IApiUserRepository{
  Future<int> createUser(Map<String, dynamic> userData);
}