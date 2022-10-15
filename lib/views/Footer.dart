import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:zynerd_app/views/About_Us.dart';
import 'package:zynerd_app/views/contact_us.dart';
import 'package:zynerd_app/views/subscription_policy.dart';
void main() {
  runApp(Footer());
}
class Footer extends StatelessWidget {
  // This widget is the root of your application.
  static Map<int, Color> color = {
    50:Color.fromRGBO(4, 131, 184, .1),
    100:Color.fromRGBO(4, 131, 184, .2),
    200:Color.fromRGBO(4, 131, 184, .3),
    300:Color.fromRGBO(4, 131, 184, .4),
    400:Color.fromRGBO(4, 131, 184, .5),
    500:Color.fromRGBO(4, 131, 184, .6),
    600:Color.fromRGBO(4, 131, 184, .7),
    700:Color.fromRGBO(4, 131, 184, .8),
    800:Color.fromRGBO(4, 131, 184, .9),
    900:Color.fromRGBO(4, 131, 184, 1),
  };
  //MaterialColor myColor = MaterialColor(0xFF162A49, color);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Footer',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF162A49, color),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FooterPage(),
    );
  }
}
class FooterPage extends StatefulWidget {
  @override
  FooterPageState createState() {
    return new FooterPageState();
  }
}
class FooterPageState extends State<FooterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: Stack(
          children: [


         Container(
            child: Container(
              
              height: 312,
              width: 430,
             color: Color(0xFF01505F),
             
              child: Column(
                children: [
                  Container(
                
                            margin: EdgeInsets.only(right: 240),
            height: 30,
            width: 128,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Footer/zynerd-white.png'),
                  fit: BoxFit.fill),
          
            ),
          ),
                  SizedBox(
                    height: 20,
                  ),
                 
           SizedBox(
                    width:20,
                  ),
                 
                 
                 
                  Row(
                    children: [
                  
                      TextButton(

                            onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AboutUs()),
            );
          },
                            child: const Text(
                              'About Us',
                               textAlign: TextAlign.right,
                              style: TextStyle(
                                 fontFamily: 'poppins',
                               color: Colors.white,
                                fontSize: 12,

                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        TextButton(

                            onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SubPolicy()),
            );
          },
                            child: const Text(
                              'Privacy policy',
                               textAlign: TextAlign.right,
                              style: TextStyle(
                                 fontFamily: 'poppins',
                               color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                    ],
                  ),
                   
                 
                   Row(
                    children: [
                      TextButton(

                            onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ContactUs()),
            );
          },
                            child: const Text(
                              'Contact Us ',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                 fontFamily: 'poppins',
                               color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        TextButton(

                            onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SubPolicy()),
            );
          },
                            child: const Text(
                              'Terms Of Service',
                               textAlign: TextAlign.right,
                              style: TextStyle(
                               color: Colors.white,
                                fontFamily: 'poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                    ],
                  ),
                   Row(
                    children: [
                      TextButton(

                            onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ContactUs()),
            );
          },
                            child: const Text(
                              'Subscription Policy ',
                             textAlign: TextAlign.right,
                              style: TextStyle(
                                 fontFamily: 'poppins',
                               color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                    
                    ],
                  ),
                       SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(right: 30)),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Color.fromARGB(255, 43, 125, 142),
                        child: Padding(
                          padding: const EdgeInsets.all(8), // Border radius
                          child: ClipOval(
                              child: Image.asset(
                                  'assets/images/Footer/quora-dark.png')),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Color.fromARGB(255, 43, 125, 142),
                        child: Padding(
                          padding: const EdgeInsets.all(8), // Border radius
                          child: ClipOval(
                              child: Image.asset(
                                  'assets/images/Footer/facebook-dark.png')),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Color.fromARGB(255, 43, 125, 142),
                        child: Padding(
                          padding: const EdgeInsets.all(8), // Border radius
                          child: ClipOval(
                              child: Image.asset(
                                  'assets/images/Footer/telegram-dark.png')),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Color.fromARGB(255, 43, 125, 142),
                        child: Padding(
                          padding: const EdgeInsets.all(8), // Border radius
                          child: ClipOval(
                              child: Image.asset(
                                  'assets/images/Footer/twitter-dark.png')),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Color.fromARGB(255, 43, 125, 142),
                        child: Padding(
                          padding: const EdgeInsets.all(8), // Border radius
                          child: ClipOval(
                              child: Image.asset(
                                  'assets/images/Footer/youtube-dark.png')),
                        ),
                      ),
                     
                    ],
                  ),
                 SizedBox(
                  height: 20,
                 ),
                   Text(
                          ' © ZyNerd 2022. Developed by ZyNerd',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                ],
              ),
            ),
          ),
         
          ],
        ),
    );
  }
}