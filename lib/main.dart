import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning_flutter/pages/home_page.dart';
import 'package:learning_flutter/pages/login_page.dart';
import 'package:learning_flutter/pages/login_page2.dart';
import 'package:learning_flutter/pages/statefull_login_page.dart';
import 'package:learning_flutter/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // home: LoginPage3(),
     // home: LoginPage2(),
     // home: LoginPage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.light,
        /*primarySwatch: Colors.red,*/
      ),


      initialRoute: MyRoutes.statefulLoginRoute,
      routes: {
        MyRoutes.loginRoute2 : (context) => LoginPage2(),
        MyRoutes.homeRoute : (context) => HomePage(),
        MyRoutes.loginRoute : (context) => LoginPage(),
        MyRoutes.statefulLoginRoute : (context) => LoginPage3(),
      },


    );
  }
  
}