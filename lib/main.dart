import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'tempe.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => const LoginPage(),
    HomePage.tag: (context) => const HomePage(),
    Tempe.tag: (context) => const Tempe(),
  };

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppTitle',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Roboto',
      ),
      home: const LoginPage(),
      routes: routes,
    );
  }
}