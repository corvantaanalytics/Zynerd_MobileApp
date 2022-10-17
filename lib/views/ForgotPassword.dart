import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:zynerd_app/views/ForgotPassword2.dart';
import 'package:zynerd_app/views/Signin.dart';

import 'SignUp.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

void _pushMenu() {
  // return Scaffold(
  //   appBar: AppBar(title: Text('Menu')),
  // );
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
          onPressed: () {},
        ),
        leadingWidth: 200,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          // height: MediaQuery.of(context).size.height - 20,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 280),
                    child: Text(
                      'Forgot Pasword, ',
                      maxLines: 1,
                      overflow: TextOverflow.visible,
                      softWrap: false,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFF85D05),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Lora'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 100),
                    child: Text(
                      'Account Verification!',
                      maxLines: 1,
                      overflow: TextOverflow.visible,
                      softWrap: false,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Lora'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(right: 290),
                child: Text(
                  'Email ',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'poppins',
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                              padding:
                                  EdgeInsets.only(left: 15, right: 15, top: 5),
                              child: TextFormField(
                                  decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Email',
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 7),
                              ))))),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: SizedBox(
                      height: 48, //height of button
                      width: 335, //width of button
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary:
                                Color(0xFF005D8C), //background color of button
                            // side: BorderSide(width:3), //border width and color
                            // elevation: 3, //elevation of button
                            shape: RoundedRectangleBorder(
                                //to set border radius to button
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.all(
                                10) //content padding inside button
                            ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPassword2()),
                          );
                        },
                        child: Text(
                          'Send OTP',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ))),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Signin()),
                      );
                    },
                    child: const Text(
                      'Back To Sign In',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        color: Color(0xFF005D8C),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
