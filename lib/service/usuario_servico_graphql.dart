/*import 'package:alice/model/usuario.dart';
import 'package:alice/service/usuario_fachada.dart';
import 'package:hasura_connect/hasura_connect.dart';

class UsuarioServicoGraphql implements UsuarioServico{
  @override
  Future<int> criarUsuario(Usuario usuario) async
  {
    String url = 'http://192.168.100.4:8080/v1/graphql';
    HasuraConnect hasuraConnect = HasuraConnect(url);
    String usuarioInsert = """
    mutation MyMutation(\$usuarios: usuario_insert_input!) {
  insert_usuario(objects: [\$usuarios]) {
    returning {
      id_usuario
    }
  }
}
  """;
    var r = await hasuraConnect.mutation(usuarioInsert, variables: {"usuarios": {
    "nome_completo": usuario.nomeCompleto,
    "email": usuario.email,
    "data_nascimento": usuario.dataNascimento.toString(),
    "numero_celular": usuario.numeroCelular,
    "usuario": usuario.usuario
    }
    }
    );
    print(r);
    //return r;   
  }
  
} */