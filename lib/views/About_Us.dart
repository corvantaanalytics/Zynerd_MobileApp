// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:zynerd_app/views/Signin.dart';
import 'package:zynerd_app/views/contact_us.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  AboutUsState createState() => AboutUsState();
}

void _pushMenu() {
  // return Scaffold(
  //   appBar: AppBar(title: Text('Menu')),
  // );
}

class AboutUsState extends State<AboutUs> {
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
              MaterialPageRoute(builder: (context) => const ContactUs()),
            );
          },
        ),
        leadingWidth: 200,
        actions: [
          OutlinedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Signin()),
              );
            },
            child: const Text('Sign In /Sign Up'),
          ),
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
      //   body: ListView(
      //     children: [
      //       Card(
      //         child: Container(
      //             height: 75,
      //             // margin: EdgeInsets.all(14.0),
      //             decoration: const BoxDecoration(
      //               image: DecorationImage(
      //                   image: AssetImage('assets/images/Landing/Rectangle.png'),
      //                   fit: BoxFit.fill),
      //             ),
      //             child: Column(
      //               // ignore: prefer_const_literals_to_create_immutables
      //               children: [
      //                 Text(
      //                   'We are top in career counselling',
      //                   textAlign: TextAlign.center,
      //                   style: TextStyle(
      //                       fontSize: 36,
      //                       fontWeight: FontWeight.w700,
      //                       fontFamily: 'Lora'),
      //                 ),
      //                 Padding(
      //                   padding: EdgeInsets.only(left: 8, right: 8),
      //                   child: Text(
      //                     "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Et nisl, consequat tincidunt imperdiet pharetra.",
      //                     textAlign: TextAlign.center,
      //                     style: TextStyle(
      //                         fontSize: 16,
      //                         fontWeight: FontWeight.w300,
      //                         fontFamily: 'Lora',
      //                         color: Colors.black45),
      //                   ),
      //                 ),
      //               ],
      //             )),
      //       ),
      //       Card(

      //           // margin: EdgeInsets.all(14.0),
      //           child: Column(
      //         // ignore: prefer_const_literals_to_create_immutables
      //         children: [
      //           Text(
      //             'Who We Are',
      //             textAlign: TextAlign.center,
      //             style: TextStyle(
      //                 fontSize: 32,
      //                 fontWeight: FontWeight.w700,
      //                 fontFamily: 'Lora'),
      //           ),
      //           Padding(
      //             padding: EdgeInsets.only(left: 8, right: 8),
      //             child: Text(
      //               'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nulla at nunc diam id eget dui euismod. Et dignissim cursus ultricies id nunc est placerat sed. Feugiat elit pretium posuere interdum aenean auctor rhoncus odio curabitur. In euismod ultricies magna metus ut pretium malesuada aliquet. Eget nunc enim mus lectus maecenas nibh volutpat. Diam in blandit enim at diam accumsan in. Dolor elementum tristique quis et proin. In sit tempus ut',
      //               textAlign: TextAlign.center,
      //               style: TextStyle(
      //                   fontSize: 16,
      //                   fontFamily: 'Lora',
      //                   fontWeight: FontWeight.w300,
      //                   color: Colors.black45),
      //             ),
      //           ),
      //         ],
      //       )),
      //       Card(
      //         child: Container(
      //           ,height: 150,
      //           // margin: EdgeInsets.all(14.0),
      //           decoration: const BoxDecoration(
      //               image: DecorationImage(
      //                   image: AssetImage('assets/images/Landing/Rectangle.png'),
      //                   fit: BoxFit.fill),
      //               borderRadius: BorderRadius.all(Radius.circular(30))),
      //         ),
      //       )
      //       Card(
      //           elevation: 0,
      //           child: Column(
      //             // ignore: prefer_const_literals_to_create_immutables
      //             children: [
      //               Text('WHY WE ARE INTO THIS',
      //                   textAlign: TextAlign.center,
      //                   style: TextStyle(
      //                     fontSize: 24,
      //                     fontWeight: FontWeight.w500,
      //                     fontFamily: 'Lora-BoldItalic',
      //                     color: Color(0xFFF85D05),
      //                   )

      //                   // color: Color.fromARGB(255, 185, 121, 25)),
      //                   ),
      //               Padding(
      //                 padding: EdgeInsets.only(left: 8, right: 8),
      //                 child: Text(
      //                   'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nulla at nunc diam id eget dui euismod',
      //                   textAlign: TextAlign.center,
      //                   style: TextStyle(
      //                       fontSize: 18,
      //                       fontFamily: 'Poppins',
      //                       fontWeight: FontWeight.w400,
      //                       color: Color(0xFF0C0C0C)),
      //                 ),
      //               ),
      //             ],
      //           )),
      //       Card(
      //         elevation: 0,
      //         child: Container(
      //           height: 60,
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage('assets/images/Landing/shape-13-05.png'),
      //               alignment: Alignment.centerLeft,
      //             ),
      //           ),
      //           child: Text(
      //               "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nulla at nunc diam id eget dui euismod. ",
      //               textAlign: TextAlign.center,
      //               style: TextStyle(
      //                   fontSize: 16,
      //                   fontFamily: 'Poppins',
      //                   fontWeight: FontWeight.w300,
      //                   color: Color(0xFF767A7C))),
      //         ),
      //       ),
      //       Card(
      //         elevation: 0,
      //         child: Container(
      //           height: 60,
      //           child: Text("01.Lorem ipsum dolor sit amet",
      //               textAlign: TextAlign.center,
      //               style: TextStyle(
      //                   fontSize: 20,
      //                   fontFamily: 'Poppins',
      //                   fontWeight: FontWeight.w500,
      //                   color: Color(0xFF0C0C0C))),
      //         ),
      //       ),
      //     ],
      //   ),
      body: ListView(children: [
        Container(
            // height: 100,
            // margin: EdgeInsets.all(14.0),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Landing/Rectangle.png'),
                  fit: BoxFit.fill),
            ),
            child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'We are top in career counselling',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Lora'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Et nisl, consequat tincidunt imperdiet pharetra.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Lora',
                          color: Colors.black45),
                    ),
                  ),
                ])),
        Container(

            // margin: EdgeInsets.all(14.0),
            child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Who We Are',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Lora'),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nulla at nunc diam id eget dui euismod. Et dignissim cursus ultricies id nunc est placerat sed. Feugiat elit pretium posuere interdum aenean auctor rhoncus odio curabitur. In euismod ultricies magna metus ut pretium malesuada aliquet. Eget nunc enim mus lectus maecenas nibh volutpat. Diam in blandit enim at diam accumsan in. Dolor elementum tristique quis et proin. In sit tempus ut',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Lora',
                    fontWeight: FontWeight.w300,
                    color: Colors.black45),
              ),
            ),
          ],
        )),
        Container(
          child: Container(
            height: 150,
            margin: EdgeInsets.all(14.0),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Landing/Rectangle.png'),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.all(Radius.circular(30))),
          ),
        ),
        Container(
            child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text('WHY WE ARE INTO THIS',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Lora-BoldItalic',
                  color: Color(0xFFF85D05),
                )

                // color: Color.fromARGB(255, 185, 121, 25)),
                ),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nulla at nunc diam id eget dui euismod',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF0C0C0C)),
              ),
            ),
          ],
        )),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Container(
            height: 115,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Landing/shape-13-05.png'),
                alignment: Alignment.centerLeft,
              ),
            ),
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nulla at nunc diam id eget dui euismod. ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF767A7C))),
          ),
        ),
        Container(
          child: Container(
            height: 50,
            child: Text("01.Lorem ipsum dolor sit amet",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF0C0C0C))),
          ),
        ),
        Container(
          child: Container(
            height: 50,
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nulla at nunc diam id eget dui euismod.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF0C0C0C))),
          ),
        ),
        Container(
          child: Container(
            height: 50,
            child: Text("01.Lorem ipsum dolor sit amet",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF0C0C0C))),
          ),
        ),
        Container(
          child: Container(
            height: 50,
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nulla at nunc diam id eget dui euismod.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF0C0C0C))),
          ),
        ),
        Container(
          child: Container(
            height: 50,
            child: Text("01.Lorem ipsum dolor sit amet",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF0C0C0C))),
          ),
        ),
        Container(
          child: Container(
            height: 30,
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nulla at nunc diam id eget dui euismod.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF0C0C0C))),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Container(
            height: 50,
            child: Text("Purpose",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'Lora',
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF0C0C0C))),
          ),
        ),
        Container(
          child: Container(
            height: 60,
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nulla at nunc diam id eget dui euismod. Et dignissim cursus ultricies id nunc est placerat sed. Feugiat elit pretium posuere interdum aenean auctor rhoncus odio curabitur. In euismod ultricies magna metus ut pretium malesuada aliquet. Eget nunc enim mus lectus maecenas nibh volutpat. Diam in blandit enim at diam accumsan in. Dolor elementum tristique quis et proin. In sit tempus ut.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF0C0C0C))),
          ),
        ),
      ]),
    );
  }
}
