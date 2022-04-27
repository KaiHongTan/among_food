import 'package:among_food/arrived.dart';
import 'package:among_food/cart.dart';
import 'package:among_food/checkout.dart';
import 'package:among_food/faq.dart';
import 'package:among_food/homepage.dart';
import 'package:among_food/locationpage.dart';
import 'package:among_food/mainpage.dart';
import 'package:among_food/ontheway.dart';
import 'package:among_food/orderhistory.dart';
import 'package:among_food/settings.dart';
import 'package:among_food/vegehouse.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'colors.dart' as colors;
import 'loginpage.dart';
import 'manageaccount.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays ([SystemUiOverlay.bottom]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AmongFood',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepOrange,
      ),
      home: const LoginPage(),
      routes: <String, WidgetBuilder>{
        '/loginpage': (BuildContext context) => LoginPage(),
        '/location': (BuildContext context) => LocationPage(),
        '/homepage': (BuildContext context) => HomePage(),
        '/mainpage': (BuildContext context) => MainPage(),
        '/vegehouse': (BuildContext context) => VegeHouse(),
        '/checkout' : (BuildContext context) => Checkout(),
        '/ontheway' : (BuildContext context) => OnTheWay(),
        '/arrived': (BuildContext context) => Arrived(),
        '/manageaccount' : (BuildContext context) => ManageAccount(),
        '/settings' : (BuildContext context) => Settings(),
        '/faq' : (BuildContext context) => FAQ(),
        '/orderhistory': (BuildContext context) => OrderHistory(),
      },
    );
  }
}

