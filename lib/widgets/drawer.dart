import 'package:flutter/material.dart';
//ignore_for_file:prefer_const_constructors

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.purple, //purai drawer ko content lai yeutai color dinxa
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.purple),
                accountName: Text("Bibek Parajuli"),
                accountEmail: Text("codebbek11@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/bbek.jpg"),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text("Home",textScaleFactor: 1.2, style: TextStyle( color: Colors.white),),
            ),
            ListTile(
              leading: Icon(
                Icons.supervised_user_circle,
                color: Colors.white,
              ),
              title: Text("Profile",textScaleFactor: 1.2, style: TextStyle( color: Colors.white),),
            ),
            ListTile(
              leading: Icon(
                Icons.mail,
                color: Colors.white,
              ),
              title: Text("Email",textScaleFactor: 1.2, style: TextStyle( color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
