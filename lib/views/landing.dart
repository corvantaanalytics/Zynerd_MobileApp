import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zynerd_app/views/About_Us.dart';
import 'package:zynerd_app/views/Footer.dart';
import 'package:zynerd_app/views/Signin.dart';
import 'package:zynerd_app/views/contact_us.dart';
import 'package:zynerd_app/views/subscription_policy.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  _LandingState createState() => _LandingState();
}

void _pushMenu() {
  // return Scaffold(
  //   appBar: AppBar(title: Text('Menu')),
  // );
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Image.asset(
                  'assets/images/Landing/ZyNerd-Final-Logo.png',
                  height: 30,
                  width: 120,
                  fit: BoxFit.fill,
                ),
                onPressed: () {},
              ),
              leadingWidth: 200,
              actions: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                      side: BorderSide(color: Colors.black, width: 1),
                      // elevation: 20,
                      // maximumSize: Size(100,50),
                      padding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 10)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Signin()),
                    );
                  },
                  child: Text("Sign In / Sign Up"),
                ),
                PopupMenuButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 0,
                      child: Text("How it works"),
                    ),
                    const PopupMenuItem(
                      value: 1,
                      child: Text("Why Trust ZyNerd"),
                    ),
                    const PopupMenuItem(
                      value: 2,
                      child: Text("About Us"),
                    ),
                    const PopupMenuItem(
                      value: 3,
                      child: Text("Subscriptions"),
                    ),
                    const PopupMenuItem(
                      value: 4,
                      child: Text("Contact Us"),
                    ),
                  ],
                  onSelected: (result) {
                    if (result == 0) {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => How it works()
                      //     ),
                      // );
                    }
                    if (result == 1) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FooterPage()),
                      );
                    }
                    if (result == 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AboutUs()),
                      );
                    }
                    if (result == 3) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SubPolicy()),
                      );
                    }
                    if (result == 4) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ContactUs()),
                      );
                    }
                  },
                  child: Icon(
                    Icons.menu_sharp,
                    color: Colors.blue[900],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                ),
              ],
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            body: SingleChildScrollView(
                child: Stack(children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/background.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'The Smartest',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 36,
                            overflow: TextOverflow.fade,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Lora'),
                      ),
                      const Text(
                        'Guidance for Your',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 36,
                            overflow: TextOverflow.fade,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Lora'),
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 350,
                            margin: EdgeInsets.all(0),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Landing/choice.png'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          const Text(
                            'career choices !',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                //  height: 0,
                                fontSize: 36,
                                color: Color(0xFFF85D05),
                                //  overflow: TextOverflow.fade,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Lora'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: Text(
                          'Counselings, Colleges, Courses, Course Fees, & Cut Offs  - At your finger-tips!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Lora',
                              color: Colors.black45),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFF005D8C)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                    side: BorderSide(
                                        color: Color(0xFF005D8C),
                                        width: 6.0,
                                        style: BorderStyle.solid)))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Signin()),
                          );
                        },
                        child: Text(
                          "Sign Up Now".toUpperCase(),
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 480,
                        margin: EdgeInsets.all(20.0),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/Landing/man.png'),
                              alignment: Alignment.bottomCenter),
                        ),
                      ),
                      SizedBox(
                          height: 100,
                          // margin: EdgeInsets.all(14.0),

                          child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  'What we do',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Lora'),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Padding(
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
                        child: Container(
                          height: 150,
                          margin: EdgeInsets.all(14.0),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Landing/Rectangle.png'),
                                  fit: BoxFit.fill),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                        ),
                      ),
                      const Text(
                        'Why trust ZyNerd?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Lora'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
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
                      Container(
                        //  height: 200,
                        child: Row(
                          children: [
                            Container(
                              height: 140,
                              width: MediaQuery.of(context).size.width / 2 -
                                  32, // minus 32 due to the margin
                              margin: EdgeInsets.all(16.0),
                              padding: EdgeInsets.all(16.0),
                              decoration: const BoxDecoration(
                                color: Colors
                                    .white, // background color of the cards
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .end, // posion the everything to the bottom
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  CircleAvatar(
                                    radius: 20,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/images/Landing/scope.png"),
                                      radius: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Full scope",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                      "Lorem ipsum dolor sit amet,consectetur adipiscing elit.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300)),
                                ],
                              ),
                            ),
                            Container(
                              height: 140,
                              width: MediaQuery.of(context).size.width / 2 -
                                  32, // minus 32 due to the margin
                              margin: EdgeInsets.all(16.0),
                              padding: EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                color: Colors
                                    .white, // background color of the cards
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .end, // posion the everything to the bottom
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/Landing/info.png",
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("information",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                      "Lorem ipsum dolor sit amet,consectetur adipiscing elit.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        //  height: 200,
                        child: Row(
                          children: [
                            Container(
                              height: 140,
                              width: MediaQuery.of(context).size.width / 2 -
                                  32, // minus 32 due to the margin
                              margin: EdgeInsets.all(16.0),
                              padding: EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                color: Colors
                                    .white, // background color of the cards
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .end, // posion the everything to the bottom
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/Landing/artistic.svg",
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Artistic",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                      "Lorem ipsum dolor sit amet,consectetur adipiscing elit.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300)),
                                ],
                              ),
                            ),
                            Container(
                              height: 140,
                              width: MediaQuery.of(context).size.width / 2 -
                                  32, // minus 32 due to the margin
                              margin: EdgeInsets.all(16.0),
                              padding: EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                color: Colors
                                    .white, // background color of the cards
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .end, // posion the everything to the bottom
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/Landing/personalize.png",
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Totally Personalized",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                      "Lorem ipsum dolor sit amet,consectetur adipiscing elit.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        //  height: 200,
                        child: Row(
                          children: [
                            Container(
                              height: 140,
                              width: MediaQuery.of(context).size.width / 2 -
                                  32, // minus 32 due to the margin
                              margin: EdgeInsets.all(16.0),
                              padding: EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                color: Colors
                                    .white, // background color of the cards
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .end, // posion the everything to the bottom
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/Landing/responsible.png",
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text("Fully Responsible",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                      "Lorem ipsum dolor sit amet,consectetur adipiscing elit.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        'Testimonial from ZyNerd Student?',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Lora'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nulla at nunc diam id eget dui euismod. Et dignissim cursus ultricies id nunc est placerat sed. Feugiat elit pretium posuere interdum aenean auctor rhoncus odio curabitur. In euismod ultricies magna metus ut pretium malesuada aliquet. Eget nunc enim mus lectus maecenas nibh volutpat. Diam in blandit enim at diam accumsan in. Dolor elementum tristique quis et proin. In sit tempus ut',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Lora',
                              fontWeight: FontWeight.w300,
                              color: Colors.black45),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 300,
                        width: 240,
                        margin: EdgeInsets.only(right: 120),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/Landing/Anya.png'),
                                fit: BoxFit.fill),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 330,
                        child: Row(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/Landing/lft.png",
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 80,
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/Landing/rt.png",
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Offering',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Lora'),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 40,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'ALL',
                              style: TextStyle(
                                color: Color(0xFF767A7C),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'MEDICAL',
                              style: TextStyle(
                                color: Color(0xFF767A7C),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'ENGINEERING',
                              style: TextStyle(
                                color: Color(0xFF767A7C),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'ART',
                              style: TextStyle(
                                color: Color(0xFF767A7C),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 235,
                        width: 380,
                        margin: const EdgeInsets.all(11.0),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/Landing/Rectangle 17.png'),
                                fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Text(
                          'NEET PG',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 28, color: Colors.black),
                        ),
                      ),
                      Container(
                        height: 235,
                        width: 380,
                        margin: const EdgeInsets.all(11.0),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/Landing/Rectangle 18.png'),
                                fit: BoxFit.fill),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Text(
                          'NEET UG',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 28, color: Colors.black),
                        ),
                      ),
                      Container(
                        height: 235,
                        width: 380,
                        margin: const EdgeInsets.all(11.0),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/Landing/Rectangle 19.png'),
                                fit: BoxFit.fill),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Text(
                          'NEET SS',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 28, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'zynerd so far',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Lora'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 130,
                        child: Row(
                          children: [
                            Center(
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/Landing/Group.png",
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ),
                            Spacer(
                              flex: 3,
                            ),
                            SizedBox(
                              width: 80,
                              child: Column(
                                children: const [
                                  Text(
                                    '7+',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 32, color: Colors.black),
                                  ),
                                  Text(
                                    'years of Experience',
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    overflow: TextOverflow.visible,
                                    softWrap: false,
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 130,
                        child: Row(
                          children: [
                            Center(
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/Landing/Graduate.png",
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ),
                            Spacer(
                              flex: 3,
                            ),
                            SizedBox(
                              width: 80,
                              child: Column(
                                children: const [
                                  Text(
                                    '7812',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 32, color: Colors.black),
                                  ),
                                  Text(
                                    'Students Registered',
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    overflow: TextOverflow.visible,
                                    softWrap: false,
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 130,
                        child: Row(
                          children: [
                            Center(
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/Landing/Target.png",
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ),
                            Spacer(
                              flex: 3,
                            ),
                            SizedBox(
                              width: 80,
                              child: Column(
                                children: const [
                                  Text(
                                    '22,512',
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    overflow: TextOverflow.visible,
                                    softWrap: false,
                                    style: TextStyle(
                                        fontSize: 32, color: Colors.black),
                                  ),
                                  Text(
                                    'No.of Hits',
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    overflow: TextOverflow.visible,
                                    softWrap: false,
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 130,
                        child: Row(
                          children: [
                            Center(
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/Landing/message.png",
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ),
                            Spacer(
                              flex: 3,
                            ),
                            SizedBox(
                              width: 80,
                              child: Column(
                                children: const [
                                  Text(
                                    '5,213',
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    overflow: TextOverflow.visible,
                                    softWrap: false,
                                    style: TextStyle(
                                        fontSize: 32, color: Colors.black),
                                  ),
                                  Text(
                                    'No.of Forum',
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    overflow: TextOverflow.visible,
                                    softWrap: false,
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))
            ]))));
  }
}