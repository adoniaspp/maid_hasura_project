import 'package:alice/model/usuario.dart';

abstract class UsuarioServico{
    Future<int> criarUsuario(Usuario user);
}