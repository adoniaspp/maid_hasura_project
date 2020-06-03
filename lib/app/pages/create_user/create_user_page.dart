import 'package:flutter/material.dart';
//import 'package:alice/controller/controller_user.dart';
//import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CreateUser extends StatefulWidget {
  @override
  _CreateUserState createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  final controllerUsername = TextEditingController();
  final controllerPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    //final controllerUser = Provider.of<ControllerUser>(context);
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
                            controller: controllerUsername,
                            decoration: InputDecoration(
                              labelText: "Nome Completo",
                              icon: Icon(Icons.person),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: TextFormField(
                            obscureText: true,
                            controller: controllerPassword,
                            decoration: InputDecoration(
                              labelText: "E-mail",
                              icon: Icon(Icons.vpn_key),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: TextFormField(
                            obscureText: true,
                            controller: controllerPassword,
                            decoration: InputDecoration(
                              labelText: "Numero do Celular",
                              icon: Icon(Icons.vpn_key),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: TextFormField(
                            obscureText: true,
                            controller: controllerPassword,
                            decoration: InputDecoration(
                              labelText: "Data de Nascimento",
                              icon: Icon(Icons.vpn_key),
                            ),
                          ),
                        ),
                         Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: TextFormField(
                            controller: controllerUsername,
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
                            controller: controllerPassword,
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
                            controller: controllerPassword,
                            decoration: InputDecoration(
                              labelText: "Confirmar Senha",
                              icon: Icon(Icons.vpn_key),
                            ),
                          ),
                        ),
                        RaisedButton(
                          onPressed: () {
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
