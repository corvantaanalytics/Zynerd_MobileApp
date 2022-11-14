import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:zynerd_app/views/About_Us.dart';
import 'package:zynerd_app/views/EditProfie.dart';
import 'package:zynerd_app/views/FAQ.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

void _pushMenu() {
  // return Scaffold(
  //   appBar: AppBar(title: Text('Menu')),
  // );
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              MaterialPageRoute(builder: (context) => const EditProfile()),
            );
          },
        ),
        leadingWidth: 200,
        actions: [
          Icon(
            Icons.menu_sharp,
            color: Colors.blue[900],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Container(
            child: Container(
              height: 312,
              width: 335,
              margin: EdgeInsets.all(14.0),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Landing/Rectangle.png'),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 170, top: 15),
                    child: Text(
                      'Contact us',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Lora'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 110),
                    child: Text(
                      'Have Some Questions?',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          color: Color(0xFFF85D05)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Poppins',
                          color: Color(0xFF767A7C)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 175),
                    child: Text(
                      ' elit. Magna diam ultricies',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Poppins',
                          color: Color(0xFF767A7C)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 265),
                    child: Text(
                      'sollicitudin.',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Poppins',
                          color: Color(0xFF767A7C)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 330,
                    child: Row(
                      children: [
                        Center(
                          child: Column(
                            children: [
                              new Image.asset(
                                "assets/images/ContactUs/Call.png",
                                // width: 40,
                                // height: 40,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 80,
                          child: Column(
                            children: [
                              Text(
                                '+91-9003578125',
                                maxLines: 1,
                                overflow: TextOverflow.visible,
                                softWrap: false,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    color: Color(0xFF0C0C0C)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 330,
                    // height: 5,
                    child: Row(
                      children: [
                        Center(
                          child: Column(
                            children: [
                              new Image.asset(
                                "assets/images/ContactUs/Mail.png",
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          // width: 80,
                          child: Column(
                            children: [
                              Text(
                                'hello@zynerd.com',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xFF0C0C0C)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.all(10)),
                      Container(
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Color.fromARGB(255, 189, 207, 225),
                          // Border radius
                          child: Image.asset(
                            'assets/images/Landing/Quora.png',
                            fit: BoxFit.fill,
                            height: 15,
                            width: 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Color.fromARGB(255, 189, 207, 225),
                          // Border radius
                          child: Image.asset(
                            'assets/images/Landing/Facebook.png',
                            fit: BoxFit.fill,
                            height: 15,
                            width: 13,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Color.fromARGB(255, 189, 207, 225),
                          // Border radius
                          child: Image.asset(
                            'assets/images/Landing/Twitter.png',
                            fit: BoxFit.fill,
                            height: 15,
                            width: 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Color.fromARGB(255, 189, 207, 225),
                          // Border radius
                          child: Image.asset(
                            'assets/images/Landing/Telegram.png',
                            fit: BoxFit.fill,
                            height: 16,
                            width: 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Color.fromARGB(255, 189, 207, 225),
                          // Border radius
                          child: Image.asset(
                            'assets/images/Landing/Youtube.png',
                            fit: BoxFit.cover,
                            height: 15,
                            width: 18,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 180,
            width: 355,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/ContactUs/conatct.png'),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
          ),
        ],
      ),
    );
  }
}
