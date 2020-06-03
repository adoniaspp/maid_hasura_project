import 'package:alice/model/usuario.dart';

abstract class IApiRepository{
  Future<int> createUser(Usuario user);
}