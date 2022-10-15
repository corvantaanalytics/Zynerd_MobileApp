
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() =>  _ForgotPasswordState ();
}

void _pushMenu() {
  // return Scaffold(
  //   appBar: AppBar(title: Text('Menu')),
  // );
}

class  _ForgotPasswordState  extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
         backgroundColor: Color(0xFFF8F8F8),
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