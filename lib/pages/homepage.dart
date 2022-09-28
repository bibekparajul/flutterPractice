import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_catalog/models/catalog.dart';

import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';
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
      final dummyList = List.generate(30, (index) => CatalogModel.items[0]);
    
        return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "CatalogApp",
          style: TextStyle(color: Colors.black),
        )),
      ),

      //items form items_widget fiile
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: dummyList.length,                //instead we use itemCount:CatalogModel.items.length,
          itemBuilder: (context, index) {             //itemBuilder:        
            return ItemWidget(
              item: dummyList[index],                 //item: Catalog.items[index]    
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
