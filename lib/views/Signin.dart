
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  _SigninState createState() =>  _SigninState ();
}

void _pushMenu() {
  // return Scaffold(
  //   appBar: AppBar(title: Text('Menu')),
  // );
}

class  _SigninState  extends State<Signin> {
  Widget build(BuildContext context) {
   return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
         
        leading: IconButton(
          icon: Image.asset(
            'assets/images/Landing/ZyNerd-Final-Logo.png',
            height: 25,
            width: 100,
            fit: BoxFit.fill,
          ),
          onPressed: () {
            
          },
        ),
        leadingWidth: 200,
       
       
      ),
        
            )
      );}}