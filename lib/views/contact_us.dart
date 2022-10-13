import 'package:flutter/material.dart';
import 'package:zynerd_app/views/Signin.dart';
import 'package:zynerd_app/views/landing.dart';

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
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const Signin()),
              // );
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
              height: 370,
              margin: EdgeInsets.all(14.0),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Landing/Rectangle.png'),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Column(
                children: [
                  Text(
                    'Contact us',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Lora'),
                  ),
                  Text('Have Some Questions?',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFF85D05),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins')),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 14,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Poppins'),
                  ),
                  Text(
                    'adipiscing elit. Magna diam ultricies',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 14,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Poppins'),
                  ),
                  Text(
                    'sollicitudin.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 14,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Poppins'),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          margin: EdgeInsets.all(14.0),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/ContactUs/Call.png'),
                                alignment: Alignment.centerLeft),
                          ),
                        ),
                        Container(
                          height: 100,
                          margin: EdgeInsets.all(14.0),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/ContactUs/Call.png'),
                                alignment: Alignment.centerLeft),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
          ],
        ));
  }
}
