import 'package:alice/controller/controller_user.dart';
import 'package:alice/model/usuario.dart';
//import 'package:alice/service/usuario_servico_graphql.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:animations/animations.dart';

import 'components/search_modal.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ContainerTransitionType _transitionType = ContainerTransitionType.fade;
  @override
  Widget build(BuildContext context) {
    final controllerUser = Provider.of<ControllerUser>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                controllerUser.logout().then((value) {
                  Navigator.pushNamed(context, '/login');
                }).catchError((onError) {});
              })
        ],
      ),
      body: ListView(
        children: [
        ],
      ),
      floatingActionButton: OpenContainer(
        transitionDuration: Duration(seconds: 1),
        closedElevation: 6.0,
        closedShape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(56.0 / 2))),
        closedColor: Theme.of(context).colorScheme.secondary,
        transitionType: _transitionType,
        closedBuilder: (context, action) => SizedBox(
          height: 56,
          width: 200,
          child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.search), Text("Solicitar")],
          )),
        ),
        openBuilder: (context, action) => Search_Modal(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
