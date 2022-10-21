// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:zynerd_app/views/Signin.dart';
import "package:zynerd_app/views/landing.dart";
import 'package:zynerd_app/views/contact_us.dart';

class Remarks extends StatefulWidget {
  const Remarks({Key? key}) : super(key: key);

  @override
  RemarksState createState() => RemarksState();
}

void _pushMenu() {
  // return Scaffold(
  //   appBar: AppBar(title: Text('Menu')),
  // );
}

class RemarksState extends State<Remarks> {
    List<String> str = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
  ];
     List<String> stm = [
   " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cursus morbi tempor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cursus morbi tempor."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
           backgroundColor: Colors.white,
        leading: IconButton(
          icon: Image.asset(
            'assets/images/Landing/ZyNerd-Final-Logo.png',
            height: 25,
            width: 100,
            fit: BoxFit.fill,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ContactUs()),
            );
          },
        ),
        leadingWidth: 200,
        actions: [
          // OutlinedButton(
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => const Signin()),
          //     );
          //   },
          //   child: const Text('Sign In /Sign Up'),
          // ),
          Icon(
            Icons.menu_sharp,
            color: Colors.blue[900],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
          )
        ],
     
      ),
      body: ListView(children: [
        Row(
          children: [
             IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black,size: 31),
    onPressed: () => Navigator.of(context).pop(),
  ), 
   Text(
                    ' Remarks',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 31,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins'),
                  ),

          ],
        ),

    SizedBox(
      height: 10,
    ),
      Padding(
                    padding: EdgeInsets.only(left:20 ),
                    child: Text(
                      "Viewing Allotments",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),
                    ),
                  ),
                  Padding(
                     padding: EdgeInsets.only(left:20),
                    child: Text(
                      'Include Seats in Private Institutes',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 2.0,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Poppins',
                          color: Color(0XFF767A7C)),
                    ),
                  ),
  
 Padding(
                    padding: EdgeInsets.only(left:20 ),
                    child: Text(
                      "Ranks",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        height: 2,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),
                    ),
                  ),
  Container(
                 padding: EdgeInsets.only(left:20 ),
                  child: Column(
                     children: str.map((strone){
                         return Row(
                            children:[
                              Text("\u2022", style: TextStyle(fontSize: 30,     color: Color(0XFF767A7C),),), //bullet text
                              SizedBox(width: 10,), //space between bullet and text
                              Expanded(
                                child:Text(strone, style:TextStyle(
                      //  height: 0,
                          fontSize: 14,
                      color: Color(0XFF767A7C),
                      //  overflow: TextOverflow.fade,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'poppins'),), //text
                              )
                            ]
                         );
                     }).toList(),
                  ),
                ),
       SizedBox(
        height: 10,
       ),
        Padding(
                    padding: EdgeInsets.only(left:20 ),
                    child: Text(
                      "Rounds",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        height: 2,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),
                    ),
                  ),
                  
  Container(
                 padding: EdgeInsets.only(left:20 ),
                  child: Column(
                     children: str.map((strone){
                         return Row(
                            children:[
                              Text("\u2022", style: TextStyle(fontSize: 30,     color: Color(0XFF767A7C),),), //bullet text
                              SizedBox(width: 10,), //space between bullet and text
                              Expanded(
                                child:Text(strone, style:TextStyle(
                      //  height: 0,
                          fontSize: 14,
                      color: Color(0XFF767A7C),
                      //  overflow: TextOverflow.fade,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'poppins'),), //text
                              )
                            ]
                         );
                     }).toList(),
                  ),
                ),
SizedBox(
  height: 20,
),
 Divider(
              thickness: 2,
              indent: 2,
              endIndent: 2,
              color: Color(0xFFECECEC),
              height: 1.5,
            ),
 Padding(
                    padding: EdgeInsets.only(left:20 ),
                    child: Text(
                      "Seat Category Classification",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        height: 2,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),
                    ),
                  ),
                  
  Container(
                 padding: EdgeInsets.only(left:20 ),
                  child: Column(
                     children: str.map((strone){
                         return Row(
                            children:[
                              Text("\u2022", style: TextStyle(fontSize: 30,     color: Color(0XFF767A7C),),), //bullet text
                              SizedBox(width: 10,), //space between bullet and text
                              Expanded(
                                child:Text(strone, style:TextStyle(
                      //  height: 0,
                          fontSize: 14,
                      color: Color(0XFF767A7C),
                      //  overflow: TextOverflow.fade,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'poppins'),), //text
                              )
                            ]
                         );
                     }).toList(),
                  ),
                ),


      ]),
    );
  }
}
