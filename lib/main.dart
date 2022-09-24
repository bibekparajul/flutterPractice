import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/loginpage.dart';

import 'pages/homepage.dart';

//ignore_for_file:prefer_const_constructors

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.purple),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        
      ),
      initialRoute: "/home",
      //for moving from the pages to pages 
      routes: {
        "/":(context) => LoginPage(),
        "/home":(context) => HomePage(),
        "/login":(context) => LoginPage()
      },

    );
  }
}
