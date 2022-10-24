// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:zynerd_app/views/Signin.dart';
import "package:zynerd_app/views/landing.dart";
import 'package:zynerd_app/views/contact_us.dart';

class FeesDetails extends StatefulWidget {
  const FeesDetails({Key? key}) : super(key: key);

  @override
 FeesDetailsState createState() => FeesDetailsState();
}

void _pushMenu() {
  // return Scaffold(
  //   appBar: AppBar(title: Text('Menu')),
  // );
}

class FeesDetailsState extends State<FeesDetails> {
   
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home:Scaffold(
       backgroundColor: Colors.white,
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
  ), Flexible(child: Text(
                    'Fees Details ',
                    // textAlign: TextAlign.justify,
     overflow: TextOverflow.ellipsis,
      maxLines: 2,
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 31,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins'),
                  ),)
   

          ],
        ),

   
 SizedBox(
      height: 15,
    ),
      Padding(
                    padding: EdgeInsets.only(left:20 ),
                    child: Text(
                      "Institute Name",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Poppins',
                          color: Color(0XFF767A7C)),
                    ),
                  ),
                  Padding(
                     padding: EdgeInsets.only(left:20),
                    child: Text(
                      'Christian Medical College, Vellore',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 2.0,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),
                    ),
                  ),
         
 SizedBox(
      height: 15,
    ),
      Padding(
                    padding: EdgeInsets.only(left:20 ),
                    child: Text(
                      "Course",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Poppins',
                          color: Color(0XFF767A7C)),
                    ),
                  ),
                  Padding(
                     padding: EdgeInsets.only(left:20),
                    child: Text(
                      'The Tamilnadu Dr. MGR Medical University, Chennai',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 2.0,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),
                    ),
                  ),
          
 SizedBox(
      height: 15,
    ),
      Padding(
                    padding: EdgeInsets.only(left:20 ),
                    child: Text(
                      "State/Authority",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Poppins',
                          color: Color(0XFF767A7C)),
                    ),
                  ),
                  Padding(
                     padding: EdgeInsets.only(left:20),
                    child: Text(
                      'Delhi',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 2.0,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),
                    ),
                  ),
           SizedBox(
      height: 15,
    ),
   Divider(
              thickness: 2,
              indent: 2,
              endIndent: 2,
              color: Color(0xFFECECEC),
              height: 1.5,
            ),
            SizedBox(
      height: 15,
    ),
Row(
  children: [
    Container(
      margin: EdgeInsets.only(left: 20),
                height: 30,
                width: 30,
                // margin: EdgeInsets.only(right: 100),
                decoration: const BoxDecoration(
                  // borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/fee.png'),
                      fit: BoxFit.fill),
                ),
              ),
   Padding(
                    padding: EdgeInsets.only(left:10 ),
                    child: Text(
                      "Fee Details",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        height: 2,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),
                    ),
                  ),
  ],
),
   Padding(
                     padding: EdgeInsets.only(left:60),
                    child: Text(
                      'There is no fee for non clinical courses in Rajasthan. If the candidate opts for no bond, fee is 1 crore',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 2.0,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Poppins',
                          color: Color(0XFF767A7C)),
                    ),
                  ),

SizedBox(
      height: 15,
    ),
      Padding(
                    padding: EdgeInsets.only(left:70 ),
                    child: Text(
                      "Course Fee",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Poppins',
                          color: Color(0XFF767A7C)),
                    ),
                  ),
                  Padding(
                     padding: EdgeInsets.only(left:70),
                    child: Text(
                      '₹22,00,000',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 2.0,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),
                    ),
                  ),
          
SizedBox(
      height: 15,
    ),
      Padding(
                    padding: EdgeInsets.only(left:70 ),
                    child: Text(
                      "Private Mgmt Fee",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Poppins',
                          color: Color(0XFF767A7C)),
                    ),
                  ),
                  Padding(
                     padding: EdgeInsets.only(left:70),
                    child: Text(
                      '-',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 2.0,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),
                    ),
                  ),

SizedBox(
      height: 15,
    ),
      Padding(
                    padding: EdgeInsets.only(left:70 ),
                    child: Text(
                      "NRI Fees",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Poppins',
                          color: Color(0XFF767A7C)),
                    ),
                  ),
                  Padding(
                     padding: EdgeInsets.only(left:70),
                    child: Text(
                      '60,000 - ₹22,00,000',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 2.0,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),
                    ),
                  ),
                  
SizedBox(
      height: 15,
    ),
      Padding(
                    padding: EdgeInsets.only(left:70 ),
                    child: Text(
                      "Hostel Fee",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Poppins',
                          color: Color(0XFF767A7C)),
                    ),
                  ),
                  Padding(
                     padding: EdgeInsets.only(left:70),
                    child: Text(
                      '₹1,40,000 to 2,70,000',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 2.0,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),
                    ),
                  ),
SizedBox(
      height: 15,
    ),
                   Divider(
              thickness: 2,
              indent: 2,
              endIndent: 2,
              color: Color(0xFFECECEC),
              height: 1.5,
            ),
               SizedBox(
      height: 15,
    ),

Row(
  children: [
    Container(
      margin: EdgeInsets.only(left: 20),
                height: 30,
                width: 30,
                // margin: EdgeInsets.only(right: 100),
                decoration: const BoxDecoration(
                  // borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/bond.png'),
                      fit: BoxFit.fill),
                ),
              ),
   Padding(
                    padding: EdgeInsets.only(left:10 ),
                    child: Text(
                      "Bond Details",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        height: 2,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),
                    ),
                  ),
  ],
),
   Padding(
                     padding: EdgeInsets.only(left:60),
                    child: Text(
                      'Stipend received has to be paid back in addition to the bond amount',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 2.0,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Poppins',
                          color: Color(0XFF767A7C)),
                    ),
                  ),

SizedBox(
      height: 15,
    ),
      Padding(
                    padding: EdgeInsets.only(left:70 ),
                    child: Text(
                      "Bond Year",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Poppins',
                          color: Color(0XFF767A7C)),
                    ),
                  ),
                  Padding(
                     padding: EdgeInsets.only(left:70),
                    child: Text(
                      '0',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 2.0,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),
                    ),
                  ),
          
SizedBox(
      height: 15,
    ),
      Padding(
                    padding: EdgeInsets.only(left:70 ),
                    child: Text(
                      "Bond Penalty",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Poppins',
                          color: Color(0XFF767A7C)),
                    ),
                  ),
                  Padding(
                     padding: EdgeInsets.only(left:70),
                    child: Text(
                      '₹0',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 2.0,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),
                    ),
                  ),
SizedBox(
      height: 15,
    ),
                   Divider(
              thickness: 2,
              indent: 2,
              endIndent: 2,
              color: Color(0xFFECECEC),
              height: 1.5,
            ),
   SizedBox(
      height: 15,
    ),
Row(
  children: [
    Container(
      margin: EdgeInsets.only(left: 20),
                height: 30,
                width: 30,
                // margin: EdgeInsets.only(right: 100),
                decoration: const BoxDecoration(
                  // borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/stipend.png'),
                      fit: BoxFit.fill),
                ),
              ),
   Padding(
                    padding: EdgeInsets.only(left:10 ),
                    child: Text(
                      "Stipend Details",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        height: 2,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),
                    ),
                  ),
  ],
),
   Padding(
                     padding: EdgeInsets.only(left:60),
                    child: Text(
                      'Stipend is not available for courses like pharmocology',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 2.0,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Poppins',
                          color: Color(0XFF767A7C)),
                    ),
                  ),

SizedBox(
      height: 15,
    ),
      Padding(
                    padding: EdgeInsets.only(left:70 ),
                    child: Text(
                      "Stipend Year 1",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Poppins',
                          color: Color(0XFF767A7C)),
                    ),
                  ),
                  Padding(
                     padding: EdgeInsets.only(left:70),
                    child: Text(
                      '₹80,000',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 2.0,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),
                    ),
                  ),
          
SizedBox(
      height: 15,
    ),
      Padding(
                    padding: EdgeInsets.only(left:70 ),
                    child: Text(
                      "Stipend Year 2",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Poppins',
                          color: Color(0XFF767A7C)),
                    ),
                  ),
                  Padding(
                     padding: EdgeInsets.only(left:70),
                    child: Text(
                      '₹80,000',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 2.0,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),
                    ),
                  ),
                  SizedBox(
      height: 15,
    ),
 Padding(
                    padding: EdgeInsets.only(left:70 ),
                    child: Text(
                      "Stipend Year 3",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Poppins',
                          color: Color(0XFF767A7C)),
                    ),
                  ),
                  Padding(
                     padding: EdgeInsets.only(left:70),
                    child: Text(
                      '₹80,000',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 2.0,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),
                    ),
                  ),
                     SizedBox(
      height: 15,
    ),
                   Divider(
              thickness: 2,
              indent: 2,
              endIndent: 2,
              color: Color(0xFFECECEC),
              height: 1.5,
            ),
   SizedBox(
      height: 15,
    ),
Row(
  children: [
    Container(
      margin: EdgeInsets.only(left: 20),
                height: 30,
                width: 30,
                // margin: EdgeInsets.only(right: 100),
                decoration: const BoxDecoration(
                  // borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/fee.png'),
                      fit: BoxFit.fill),
                ),
              ),
   Padding(
                    padding: EdgeInsets.only(left:10 ),
                    child: Text(
                      "Deduction Details",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        height: 2,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),
                    ),
                  ),
  ],
),

SizedBox(
      height: 15,
    ),
      Padding(
                    padding: EdgeInsets.only(left:70 ),
                    child: Text(
                      "Deduction - Resignation after R1 on upgradation",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Poppins',
                          color: Color(0XFF767A7C)),
                    ),
                  ),
                  Padding(
                     padding: EdgeInsets.only(left:70),
                    child: Text(
                      'Info not available',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 2.0,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),
                    ),
                  ),
          
SizedBox(
      height: 15,
    ),
      Padding(
                    padding: EdgeInsets.only(left:70 ),
                    child: Text(
                      "Deduction - Resignation after R2 (before last counselling by MCC)",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Poppins',
                          color: Color(0XFF767A7C)),
                    ),
                  ),
                  Padding(
                     padding: EdgeInsets.only(left:70),
                    child: Text(
                      '60,000 - ₹22,00,000',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 2.0,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),
                    ),
                  ),
                  SizedBox(
      height: 15,
    ),
      Padding(
                    padding: EdgeInsets.only(left:70 ),
                    child: Text(
                      "Deduction - Resignation after last counselling by MCC",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Poppins',
                          color: Color(0XFF767A7C)),
                    ),
                  ),
                  Padding(
                     padding: EdgeInsets.only(left:70),
                    child: Text(
                      'Full 3 years fees',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 2.0,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),
                    ),
                  ),
          
SizedBox(
      height: 15,
    ),
      Padding(
                    padding: EdgeInsets.only(left:70 ),
                    child: Text(
                      "Seat Leaving Penalty (Course discontinuation)",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Poppins',
                          color: Color(0XFF767A7C)),
                    ),
                  ),
                  Padding(
                     padding: EdgeInsets.only(left:70),
                    child: Text(
                      'Full 3 years fees',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 2.0,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),
                    ),
                  ),




      ]),
    )
    );
  }
}
