import 'dart:developer';
import 'dart:ui';
import 'package:intl/intl.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:zynerd_app/models/SignUp/PreferredExams.dart';
import 'package:zynerd_app/views/Signin.dart';
import 'package:zynerd_app/views/subscription_policy.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/SignUp/States.dart';
import '../models/post.dart';


class SignUp extends StatefulWidget {


  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();

}

void _pushMenu() {
  // return Scaffold(
  //   appBar: AppBar(title: Text('Menu')),
  // );
}

class _SignUpState extends State<SignUp> {
  late Future<SignUp> futureSignUp;
  TextEditingController dateinput = TextEditingController();
  // var zynerdStates = List<String>;
  List<String> zynerdStates = List.empty();
  List<PreferredExams> preferredExams = List.empty();

  Future<List<String>> getstates() async {
    const String urlStr = 'http://infra.zynerd.co.in/api_v2/signup/new';
    final Uri url = Uri.parse(urlStr);
    var response = await http.get(url, headers: {"Accept": "application/json"});

    Map<String, dynamic> responseJson =
        json.decode(response.body) as Map<String, dynamic>;

    if (response.statusCode == 200) {
      zynerdStates = responseJson['data']['states'].cast<String>();

      List<dynamic> preferredExamsStr = responseJson["data"]['preferred_exams'];

      preferredExams = examFromJson(preferredExamsStr);
      return zynerdStates;
    } else {
      throw Exception();
    }
  }

  @override
  Widget build(BuildContext context) {
    var date;
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
                      'Sign up,',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFF85D05),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 100),
                    child: Text(
                      'Welcome to Zynerd!',
                      maxLines: 1,
                      overflow: TextOverflow.visible,
                      softWrap: false,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Lora'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(right: 290),
                child: Text(
                  'Name ',
                  textAlign: TextAlign.left,
                  style: TextStyle(
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
                                labelText: 'Name',
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 7),
                              ))))),
                  Padding(
                    padding: EdgeInsets.only(right: 235),
                    child: Text(
                      'Date of Birth ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                          child: TextField(
                            controller:
                                dateinput, //editing controller of this TextField
                            decoration: InputDecoration(
                                icon: Icon(
                                    Icons.calendar_today), //icon of text field
                                labelText: "MM/DD/YYYY" //label text of field
                                ),
                            readOnly:
                                true, //set it true, so that user will not able to edit text
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                  context: context, //context of current state
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(
                                      1900), //DateTime.now() - not to allow to choose before today.
                                  lastDate: DateTime(2101));

                              if (pickedDate != null) {
                                print(
                                    pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                String formattedDate =
                                    DateFormat('MM-dd-yyyy').format(pickedDate);
                                print(
                                    formattedDate); //formatted date output using intl package =>  2021-03-16
                                //you can implement different kind of Date Format here according to your requirement

                                setState(() {
                                  dateinput.text =
                                      formattedDate; //set output date to TextField value.
                                });
                              } else {
                                print("Date is not selected");
                              }
                            },
                          )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 290),
                    child: Text(
                      'State',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Stack(
                      alignment: const Alignment(0, 0),
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: DropdownButtonFormField<String>(
                            items: zynerdStates
                                .map((states) => DropdownMenuItem(
                                      value: states,
                                      child: Text(states),
                                    ))
                                .toList(),
                            onChanged: (_) {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 210),
                    child: Text(
                      'Preferred Exam',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Stack(
                      alignment: const Alignment(0, 0),
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: DropdownButtonFormField<PreferredExams>(
                            items: preferredExams
                                // items: zynerdStates
                                .map((exam) => DropdownMenuItem(
                                      value: exam,
                                      child: Text(exam.name),
                                    ))
                                .toList(),
                            onChanged: (_) {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 290),
                    child: Text(
                      'Email ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
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
                  Padding(
                    padding: EdgeInsets.only(right: 270),
                    child: Text(
                      'Password',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Stack(
                      alignment: const Alignment(0, 0),
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 15, right: 15, top: 5),
                                child: TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 7),
                                      labelText: 'Your password',
                                    )))),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 35, top: 10),
                child: Text(
                  'Creating an account,accept',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Poppins',
                      color: Color(0xFF9DA3A6)),
                ),
              ),
              // SizedBox(
              //   height: 5,
              // ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SubPolicy()),
                      );
                    },
                    child: const Text(
                      'Terms of Service',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontFamily: 'poppins',
                        color: Color(0xFF005D8C),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    "and",
                    style: TextStyle(
                      color: Color(0xFF9DA3A6),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SubPolicy()),
                      );
                    },
                    child: const Text(
                      'Privacy Policy',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontFamily: 'poppins',
                        color: Color(0xFF005D8C),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
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
                          //code to execute when this button is pressed.
                        },
                        child: Text(
                          'Request OTP',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ))),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have an Account?",
                    style: TextStyle(
                      color: Color(0xFF9DA3A6),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Signin()),
                      );
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFF005D8C),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              )
              // Container(
              //   height: 30,
              //   width: 30,
              //   decoration: BoxDecoration(
              //       image: DecorationImage(
              //           image: AssetImage(
              //               'assets/images/Login/icons8-google 1.png'),
              //           fit: BoxFit.cover)),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // Text("Sign In with Google"),
            ],
          ),
        ),
      ),
    ));
  }
}
