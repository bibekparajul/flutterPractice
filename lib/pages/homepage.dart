import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/drawer.dart';
//ignore_for_file:prefer_const_constructors

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int days = 32;
  String name = "Bbek";
  double pi = 3.14;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("CatalogApp")),
      ),
      body: Center(
        child: Container(
          child: Text(
            "Welcome to the $days of flutter by $name",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
