import 'package:alice/app/stores/user_store.dart';
import 'package:flutter/material.dart';
//import 'package:alice/controller/controller_user.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class CreateUser extends StatefulWidget {
  @override
  _CreateUserState createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  final controllerNomeCompleto = TextEditingController();
  final controllerEmail = TextEditingController();
  final controllerCelular = TextEditingController();
  final controllerDataNascimento = TextEditingController();
  final controllerUsuario = TextEditingController();
  final controllerSenha = TextEditingController();
  final controllerConfSenha = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final storeUser = Provider.of<UserStore>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Alice EDU"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: //Observer(builder: (_) {
              //return //controllerUser.wait
              //? CircularProgressIndicator()
              //:
              Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: TextFormField(
                    controller: controllerNomeCompleto,
                    decoration: InputDecoration(
                      labelText: "Nome Completo",
                      icon: Icon(Icons.person),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: TextFormField(
                    controller: controllerEmail,
                    decoration: InputDecoration(
                      labelText: "E-mail",
                      icon: Icon(Icons.vpn_key),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: TextFormField(
                    controller: controllerCelular,
                    decoration: InputDecoration(
                      labelText: "Numero do Celular",
                      icon: Icon(Icons.vpn_key),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: TextFormField(
                    controller: controllerDataNascimento,
                    decoration: InputDecoration(
                      labelText: "Data de Nascimento",
                      icon: Icon(Icons.vpn_key),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: TextFormField(
                    controller: controllerUsuario,
                    decoration: InputDecoration(
                      labelText: "Usuário",
                      icon: Icon(Icons.person),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: TextFormField(
                    obscureText: true,
                    controller: controllerSenha,
                    decoration: InputDecoration(
                      labelText: "Senha",
                      icon: Icon(Icons.vpn_key),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: TextFormField(
                    obscureText: true,
                    controller: controllerConfSenha,
                    decoration: InputDecoration(
                      labelText: "Confirmar Senha",
                      icon: Icon(Icons.vpn_key),
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    storeUser
                        .createUser({"usuario": {
                          'nome_completo': controllerNomeCompleto.value.text,
                          'email': controllerEmail.value.text,
                          'data_nascimento': controllerDataNascimento.value.text,
                          'numero_celular': controllerCelular.value.text,
                          'usuario': controllerUsuario.value.text,
                          //'senha': controllerSenha.value.text,
                          //'confirmacaoSenha': controllerConfSenha.value.text
                        }})
                        .then((value) => print(value))
                        .catchError((e) {});
                    /*controllerUser
                                .createUser(controllerUsername.text,
                                    controllerPassword.text)
                                .then((value) {
                              print(value.accessToken);      
                              Navigator.pushNamed(context, '/home');
                            }).catchError((e){
                              if(e.toString() == "entity_already_exists"){
                                print("Usuário já existente na base de dados");
                              }
                            });*/
                  },
                  child: Text("Cadastar"),
                ),
              ],
            ),
          ),
          //}),
        ),
      ),
    );
  }
}
