import 'package:flutter/material.dart';

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
  Widget build(BuildContext context) {
   return MaterialApp(
        home: Scaffold(
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
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
        body: Center(
 
            child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
             child: RichText(
          text: TextSpan(
            
            text: 'The Smartest Guidance for Your',
            
            style: TextStyle(color: Colors.black,fontFamily: 'Poppins', fontSize: 36,fontWeight: FontWeight.bold,), /*defining default style is optional */
            children: <TextSpan>[
              TextSpan(
                  text: 'Career Choices!', style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold, fontSize: 36)),
              
            ],
          ),
        ),
      
               )
               
              )
            )
      );}}