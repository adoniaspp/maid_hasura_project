import 'package:alice/model/usuario.dart';
import 'package:alice/service/usuario_servico_graphql.dart';
import 'package:test/test.dart';

void main()
{
  group("usuario_servico",(){
    test('cadastrar usuario',() async{
      var now = new DateTime.now();
      Usuario usuario = Usuario("Pedro Cesar", "cesar", now, "cesar@pp.com", "91988219977");
      var value = await UsuarioServicoGraphql().criarUsuario(usuario); 
      expect(value, equals(2));
    });
  });
}


