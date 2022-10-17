import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:zynerd_app/views/Signin.dart';

import 'SignUp.dart';

class ForgotPassword2 extends StatefulWidget {
  const ForgotPassword2({Key? key}) : super(key: key);

  @override
  _ForgotPassword2State createState() => _ForgotPassword2State();
}

void _pushMenu() {
  // return Scaffold(
  //   appBar: AppBar(title: Text('Menu')),
  // );
}

class _ForgotPassword2State extends State<ForgotPassword2> {
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
                    padding: EdgeInsets.only(right: 310),
                    child: Text(
                      'Forgot Password, ',
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      overflow: TextOverflow.visible,
                      softWrap: false,
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
                      'Change your password',
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
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 190),
                    child: Text(
                      'We have sent the verification code to your email',
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.visible,
                      softWrap: false,
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF9DA3A6)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 380),
                    child: Text(
                      'abc@zynerd.com',
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.visible,
                      softWrap: false,
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF0C0C0C)),
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
                  'OTP ',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 18,
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
                                labelText: 'otp',
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 7),
                              ))))),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(right: 210),
                child: Text(
                  'New Password ',
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  overflow: TextOverflow.visible,
                  softWrap: false,
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 18,
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
                                labelText: 'New Password ',
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 7),
                              ))))),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 200),
                child: Text(
                  'Confirm Password',
                  maxLines: 1,
                  overflow: TextOverflow.visible,
                  softWrap: false,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 18,
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
                                labelText: 'Confirm Password ',
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 7),
                              ))))),
                ],
              ),
              SizedBox(
                height: 20,
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
                                builder: (context) => const Signin()),
                          );
                        },
                        child: Text(
                          'Change my password',
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
                        color: Color(0xFF005D8C),
                        fontFamily: 'poppins',
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
