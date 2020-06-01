import 'package:alice/controller/controller_user.dart';
import 'package:alice/views/create_user.dart';
import 'package:flutter/material.dart';
import 'package:alice/style/Colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:alice/views/home.dart';
import 'package:alice/views/login.dart';
import 'package:provider/provider.dart';


class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

    TextTheme _buildMppaTextTheme() {
    return TextTheme(
      headline4: GoogleFonts.roboto(
          fontSize: 96, fontWeight: FontWeight.w300, letterSpacing: -1.5),
      headline3: GoogleFonts.roboto(
          fontSize: 60, fontWeight: FontWeight.w300, letterSpacing: -0.5),
      headline2: GoogleFonts.roboto(fontSize: 48, fontWeight: FontWeight.w400),
      headline1: GoogleFonts.roboto(
          fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      headline5: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w400),
      headline6: GoogleFonts.roboto(
          fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
      subtitle1: GoogleFonts.roboto(
          fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
      subtitle2: GoogleFonts.roboto(
          fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
      bodyText2: GoogleFonts.roboto(
          fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
      bodyText1: GoogleFonts.roboto(
          fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      button: GoogleFonts.roboto(
          fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
      caption: GoogleFonts.roboto(
          fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
      overline: GoogleFonts.roboto(
          fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
    );
  }

  ThemeData _buildAliceTheme() {
    //final ThemeData base = ThemeData.light();
    return ThemeData(
      primaryColor: principal1,
      accentColor: auxAzul80,
      backgroundColor: principal2,
      bottomAppBarColor: auxCinza40,
      buttonColor: auxCinza40,
      cardColor: auxLaranja40,
      dialogBackgroundColor: auxCinza20,
      dividerColor: principal1,
      //scaffoldBackgroundColor: principal2,
      selectedRowColor: auxAmarelo60,
      splashColor: principal1,
      textTheme: _buildMppaTextTheme(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controllerUser = Provider.of<ControllerUser>(context);
    return 
    
    MultiProvider(
      providers: [
        Provider<ControllerUser>(
          create: (_) => ControllerUser(),
        )
      ],
      child: MaterialApp(
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
            '/': (context) => Login(),
            '/login': (context) => Login(),            
            '/createuser': (context) => CreateUser(),
            '/home': (context) => Home()
          },
          theme: _buildAliceTheme(),
          debugShowCheckedModeBanner: false,
          title: "Alice",
      ),
    );
  }
}