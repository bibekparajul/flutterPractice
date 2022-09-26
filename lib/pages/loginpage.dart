import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
//ignore_for_file:prefer_const_constructors

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Image.asset(
              "assets/images/user.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  InkWell(

                    onTap:() async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                       Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton? 50 : 140,
                      height: 50,
                      alignment: Alignment.center,
                      
                      // ignore: sort_child_properties_last
                      child:changeButton?Icon(Icons.done, color: Colors.white,):Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      decoration: BoxDecoration(
                        // shape: changeButton?BoxShape.circle: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(changeButton?50:7),
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),

                  // ElevatedButton(
                  //   style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),),

                  //   child: Text("Login"),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
