import 'package:alice/app/pages/create_user/create_user_page.dart';
import 'package:alice/app/pages/home/home_page.dart';
import 'package:alice/app/pages/login/login_page.dart';
//import 'package:alice/controller/controller_user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  Widget build(BuildContext context) {
    //final controllerUser = Provider.of<ControllerUser>(context);
    return 
/*    MultiProvider(
      providers: [
        Provider<ControllerUser>(
          create: (_) => ControllerUser(),
        )
      ],*/
      //child: 
      MaterialApp(
          initialRoute: '/',
          routes: {
            /*'/':
                (context) //ControllerUser().verifyToken() == false ? Home() : Login(),
                =>
                Observer(builder: (_) =>
                    controllerUser.isAuth == true
                  ? Home()
                  : FutureBuilder(
                      future: controllerUser.verifyToken(),
                      builder: (context, snapshot) =>
                          snapshot.connectionState == ConnectionState.waiting
                              ? Scaffold(body: CircularProgressIndicator(),)
                              : Login(),
                    ),
                )
              ,*/
            '/': (context) => CreateUser(),
            '/login': (context) => Login(),            
            '/createuser': (context) => CreateUser(),
            '/home': (context) => Home()
          },
          debugShowCheckedModeBanner: false,
          title: "Alice",
      //),
    );
  }
}