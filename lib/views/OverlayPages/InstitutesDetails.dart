// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:zynerd_app/views/Signin.dart';
import "package:zynerd_app/views/landing.dart";
import 'package:zynerd_app/views/contact_us.dart';

class InstituteDetails extends StatefulWidget {
  const InstituteDetails({Key? key}) : super(key: key);

  @override
  InstituteDetailsState createState() => InstituteDetailsState();
}

void _pushMenu() {
  // return Scaffold(
  //   appBar: AppBar(title: Text('Menu')),
  // );
}

class InstituteDetailsState extends State<InstituteDetails> {
   
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
  ), Flexible(child: Text(
                    'Christian Medical College,Vellore ',
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
                      'Tamil nadu',
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
                      "Qualifying Examination",
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
                      '-',
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
                      "Institute Type",
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
                      'Private Institute (State University)',
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
                      "Institute Management",
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
                      'State Authority',
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
                      "Local Distinction",
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
                      '-',
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
                      "Minority Status",
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
                      'No Info Available',
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
DataTable(
 columns: [
  
          DataColumn(
            label: Text(' Quota',
             style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0XFF9DA3A6)),),
            
            
                     ),
          DataColumn(
            label: Text('Seat Distribution' ,  style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0XFF9DA3A6)),),
          ),
         
        ], 
  rows: [
            
         DataRow(cells: [
            DataCell(Text('General', style: TextStyle(
                        height: 2.0,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),)),
            DataCell(Text('Seat Distribution', style: TextStyle(
                        height: 2.0,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),)),
            
           
         ]
         ),
           DataRow(cells: [
            DataCell(Text('General', style: TextStyle(
                        height: 2.0,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),)),
            DataCell(Text('Seat Distribution', style: TextStyle(
                        height: 2.0,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),)),
            
           
         ]
         ),
           DataRow(cells: [
            DataCell(Text('General', style: TextStyle(
                        height: 2.0,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),)),
            DataCell(Text('Seat Distribution', style: TextStyle(
                        height: 2.0,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0XFF0C0C0C)),)),
            
           
         ]
         )
         
    ])
      ]),
    );
  }
}
