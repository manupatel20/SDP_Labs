import 'package:flutter/material.dart';
import 'pages/choose_location.dart';
import 'pages/home.dart';
import 'pages/loading.dart';
/*
10
void main() => runApp(MaterialApp(
// home: Home(),
routes: { // routes is Map variable with 'key:value' pairs
// '/about' ....eg.....routes the screen through 'about' widgets
// '/contact'....
'/': (context) => Loading(), // base routes....base widget file...main
file of project
// above statement will creates error...because it conflict with 'home:
Home(),
// because both statements tell flutter to initialize the app from their
given
location
'/home': (context) => Home(),
'/location': (context) => ChooseLocation(),
}
));
*/
void main() => runApp(MaterialApp(

    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    }
));