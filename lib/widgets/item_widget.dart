import 'package:flutter/material.dart';

import '../models/catalog.dart';

//ignore_for_file:prefer_const_constructors
class ItemWidget extends StatelessWidget {
  final Item item;

  // const ItemWidget({super.key, required this.item});

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.4,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple),
        ),
      ),
    );
  }
}