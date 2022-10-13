import 'package:flutter/material.dart';
import 'package:zynerd_app/views/About_Us.dart';
import 'package:zynerd_app/views/Signin.dart';

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
              MaterialPageRoute(builder: (context) => const AboutUs()),
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
          
          PopupMenuButton(
      child: Icon(
            Icons.menu_sharp,
            color: Colors.blue[900],
         
          ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))
      ),
      itemBuilder: (context) => [
        PopupMenuItem(
          child: Text("How it works"),
        ),
        PopupMenuItem(
          child: Text("Why Trust ZyNerd"),
        ),
        PopupMenuItem(
          child: Text("About Us"),
        ),
        PopupMenuItem(
          child: Text("Subscriptions"),
        ),
         PopupMenuItem(
          child: Text("Contact Us"),
        ),
      ],
      
    ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
          ),
        ],
        
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      
        body: Center(
          
 
            child: new Container(
              constraints: BoxConstraints.expand(),
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
    
                    Text(
                      'The Smartest Guidance for Your! ',
                      
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 36,
                           overflow: TextOverflow.fade,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Lora'),
                    ),
                    Text(
                      ' Career Choices!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 36,
                          color: Colors.orange,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Lora'),
                    ),
                                SizedBox(
      height: 10, 
    ),
    
                    Padding(
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
                    SizedBox(
      height: 25, 
    ),
    
                    ElevatedButton(
      child: Text(
        "Sign Up Now".toUpperCase(),
        style: TextStyle(fontSize: 15),
      ),
      
      style: ButtonStyle(
        
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 3, 74, 161)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          
          RoundedRectangleBorder(
            
            borderRadius: BorderRadius.circular(7),
            side: BorderSide(color: Color.fromARGB(255, 3, 74, 161),width: 6.0, style: BorderStyle.solid)
          )
        )
        
      ),
  onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Signin()),
            );
          },
    ),
    Container(
                    height: 480,
                    margin: EdgeInsets.all(20.0),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/Landing/man.png'),
                          alignment: Alignment.bottomCenter),
                    ),
                  ),
                  
   
  
                  
                  ],
                  
                  
                  
                )
                
                
               )
               
               
               
              )
              
            )
            
      );}}