import 'package:alice/controller/controller_user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final controllerUsername = TextEditingController();
  final controllerPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final controllerUser = Provider.of<ControllerUser>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Alice EDU"),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
            key: _formKey,
            child: SingleChildScrollView(
                          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    controller: controllerUsername,
                    decoration: InputDecoration(
                      labelText: "Usuário",
                      icon: Icon(Icons.person),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Insira um usuário!";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: controllerPassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Senha",
                      icon: Icon(Icons.vpn_key),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Insira uma senha!";
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            if(_formKey.currentState.validate()){
                            controllerUser
                                .login(controllerUsername.text,
                                    controllerPassword.text)
                                .then((value) {
                                  print(value.accessToken); 
                                  Navigator.pushNamed(context, "/home");
                                })
                                .catchError((erro) {
                                    print(erro.toString());
                                });}
                          },
                          child: Text("Entrar"),
                        ),
                        FlatButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/createuser');
                            },
                            child: Text("Cadastrar-se"))
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
