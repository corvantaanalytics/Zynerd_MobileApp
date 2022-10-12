import 'package:flutter/material.dart';
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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Landing()),
            );
          },
        ),
        leadingWidth: 200,
        actions: [
          // OutlinedButton(
          //   onPressed: () {
          //     //Response
          //   },
          //   child: Text('Sign In /Sign Up'),
          // ),
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
    );
  }
}
