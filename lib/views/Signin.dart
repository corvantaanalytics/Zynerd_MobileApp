
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:zynerd_app/views/ForgotPassword.dart';
import 'package:zynerd_app/views/SignUp.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  _SigninState createState() =>  _SigninState ();
}

void _pushMenu() {
  // return Scaffold(
  //   appBar: AppBar(title: Text('Menu')),
  // );
}

class  _SigninState  extends State<Signin> {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
         backgroundColor: Color(0xFFF8F8F8),
        leading: IconButton(
          icon: Image.asset(
            'assets/images/Landing/ZyNerd-Final-Logo.png',
            height: 25,
            width: 100,
            fit: BoxFit.fill,
          ),
          onPressed: () {
            
          },
        ),
        leadingWidth: 200,
       
       
      ),
       body: SingleChildScrollView(
        
        child: Container(
          
           padding: EdgeInsets.symmetric(horizontal: 20),
          // height: MediaQuery.of(context).size.height - 20,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
       SizedBox(
                                    height: 30,
                                  ),  
                          Column(
                
                children: <Widget>[
                  
                  Padding(
                    padding: EdgeInsets.only(right: 280),
                    child: Text(
                      'Sign in, ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 20,
                           color: Color(0xFFF85D05),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Lora'),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: EdgeInsets.only(right: 100),
                    child: Text(
                      'Welcome Back!',
                     maxLines: 1,
                                    overflow: TextOverflow.visible,
                                    softWrap: false,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Lora'),
                    ),
                  ),


                ],
              ),
               SizedBox(
                                    height: 30,
                                  ),  
                 Padding(
                    padding: EdgeInsets.only(right: 290),
                    child: Text(
                      'Email ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 18,
                           color: Colors.black,
                          fontWeight: FontWeight.w400,
                          ),
                    ),
                  ),      
              Column(
                
                children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      
                      child: Padding(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                          child: TextFormField(
                              decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Email',
                            contentPadding: EdgeInsets.symmetric(vertical: 7),
                          ))))),
                           Padding(
                    padding: EdgeInsets.only(right: 270),
                    child: Text(
                      'Password',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 18,
                           color: Colors.black,
                          fontWeight: FontWeight.w400,
                          ),
                    ),
                  ),      
              Padding(
                padding: EdgeInsets.all(10),
                child: Stack(
                  alignment: const Alignment(0, 0),
                  
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                         
                            padding:
                                EdgeInsets.only(left: 15, right: 15, top: 5),
                                
                            child: TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(vertical: 7),
                                   labelText: 'Your password',
                                )))),
                   
                  ],
                ),
              ),
             
            
                Container(
                   margin: EdgeInsets.only(left: 240),
               child: TextButton(

                            onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ForgotPassword()),
            );
          },
                            child: const Text(
                              'Forgot password?',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                               color: Color(0xFF005D8C),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                )
                ],
              ),
               SizedBox(
                                    height: 10,
                                  ),        
                        Center( 
            child: SizedBox( 
              height:48, //height of button
              width:335, //width of button
              child:ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFF005D8C), //background color of button
                  // side: BorderSide(width:3), //border width and color
                  // elevation: 3, //elevation of button
                  shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(10)
                  ),
                  padding: EdgeInsets.all(10) //content padding inside button
                ),
                onPressed: (){ 
                    //code to execute when this button is pressed.
                }, 
                child: Text(
                                  'Sign in',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                     ),
                                ),
              )
            )
        ),
     SizedBox(
                                    height: 30,
                                  ),                      
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Don’t have an Account?",
                  style: TextStyle(
                        
                          color: Color(0xFF9DA3A6),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                         ),),
                  TextButton(
                           onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignUp()),
            );
          },
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Color(0xFF005D8C),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                ],
              )



            ],

          ),


        ),

      ),

        
            )
      );}}