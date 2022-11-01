import 'package:flutter/material.dart';
import 'package:zynerd_app/views/About_Us.dart';
import 'package:zynerd_app/views/contact_us.dart';

class SubPlan extends StatefulWidget {
  const SubPlan({Key? key}) : super(key: key);

  @override
  _SubPlanState createState() => _SubPlanState();
}

void _pushMenu() {
  // return Scaffold(
  //   appBar: AppBar(title: Text('Menu')),
  // );
}

class _SubPlanState extends State<SubPlan> {
  List<String> str = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
  ];

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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const AllotmentsMapping()),
                      // );
                    },
        ),
        
        leadingWidth: 200,
        actions: [
             
           PopupMenuButton(
            child: Icon(
              Icons.menu_sharp,
              color: Colors.blue[900],
            ),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            itemBuilder: (context) => [
              const PopupMenuItem(
                child: Text("How it works"),
              ),
              const PopupMenuItem(
                child: Text("Why Trust ZyNerd"),
              ),
              const PopupMenuItem(
                child: Text("About Us"),
              ),
              const PopupMenuItem(
                child: Text("Subscriptions"),
              ),
              const PopupMenuItem(
                child: Text("Contact Us"),
              ),
            ],
          ),
          
        ],
        
      ),
      body: 
      ListView(
        
        children: [
           Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'SubscriptionPlan',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 36,
                          fontFamily: 'lora',
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
      
       
   
          Container(
            // height: 722,
            // width: 315, // minus 32 due to the margin
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white, // background color of the cards
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child:Column(
              children: [
Container(
              // height: 404,
              //  width: 350, // minus 32 due to the margin
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color(0xFFF5F5E9), // background color of the cards
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Column(
                children: [
                  const Text(
                    'Aspire (NEET UG)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        //  height: 0,
                        fontSize: 28,
                        color: Colors.black,
                        //  overflow: TextOverflow.fade,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'poppins'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Under Graduation - Medicine (MBBS & BDS)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        //  height: 0,
                        fontSize: 12,
                        color: Colors.black,
                        //  overflow: TextOverflow.fade,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'poppins'),
                  ),
                  SizedBox(
                    height: 10,
                  ), 
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 147,
                        width: 273,
                        // margin: EdgeInsets.only(right: 100),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          image: DecorationImage(
                              image: AssetImage('assets/images/Aspire.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        height: 49,
                        width: 49,
                        // margin: EdgeInsets.only(right: 100),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          image: DecorationImage(
                              image: AssetImage('assets/images/Play.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 60,
                      ),
                      new Text(
                        '399 ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Text(
                        'for 90 days',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'poppins',
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                      child: SizedBox(
                          height: 40, //height of button
                          width: 150, //width of button
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(
                                    0xFF005D8C), //background color of button
                                // side: BorderSide(width:3), //border width and color
                                // elevation: 3, //elevation of button
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(10)),
                                padding: EdgeInsets.all(
                                    10) //content padding inside button
                                ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => Signin()),
                              // );
                            },
                            child: Text(
                              'Buy Aspire',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ))),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Features Description',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(0xFF005D8C),
                        fontSize: 16,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
             Padding(
                    padding: EdgeInsets.only(right: 130),
                    child: Text(
                      'ZyNerd Aspire',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF005D8C)),
                    ),
                  ),
             Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                     children: str.map((strone){
                         return Row(
                            children:[
                              Text("\u2022", style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 117, 169, 195),),), //bullet text
                              SizedBox(width: 10,), //space between bullet and text
                              Expanded(
                                child:Text(strone, style:TextStyle(
                      //  height: 0,
                      fontSize: 14,
                      color: Color(0XFF767A7C),
                      //  overflow: TextOverflow.fade,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'poppins'),), //text
                              )
                            ]
                         );
                     }).toList(),
                  ),
                ),
              ],
            ),
             

          ),
          Container(
            // height: 722,
            // width: 315, // minus 32 due to the margin
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white, // background color of the cards
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child:Column(
              children: [
                Container(
              // height: 404,
              //  width: 350, // minus 32 due to the margin
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color(0xFFFE6F4FF), // background color of the cards
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Column(
                children: [
                  const Text(
                    'Aspire (NEET UG)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        //  height: 0,
                        fontSize: 28,
                        color: Colors.black,
                        //  overflow: TextOverflow.fade,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'poppins'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Under Graduation - Medicine (MBBS & BDS)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        //  height: 0,
                        fontSize: 12,
                        color: Colors.black,
                        //  overflow: TextOverflow.fade,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'poppins'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 147,
                        width: 273,
                        // margin: EdgeInsets.only(right: 100),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          image: DecorationImage(
                              image: AssetImage('assets/images/Acheive.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        height: 49,
                        width: 49,
                        // margin: EdgeInsets.only(right: 100),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          image: DecorationImage(
                              image: AssetImage('assets/images/Play.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 60,
                      ),
                      new Text(
                        '1499 ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Text(
                        'for 90 days',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'poppins',
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                      child: SizedBox(
                          height: 40, //height of button
                          width: 150, //width of button
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(
                                    0xFF005D8C), //background color of button
                                // side: BorderSide(width:3), //border width and color
                                // elevation: 3, //elevation of button
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(10)),
                                padding: EdgeInsets.all(
                                    10) //content padding inside button
                                ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => Signin()),
                              // );
                            },
                            child: Text(
                              'Buy Aspire',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ))),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Features Description',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(0xFF005D8C),
                        fontSize: 16,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
             Padding(
                    padding: EdgeInsets.only(right: 130),
                    child: Text(
                      'ZyNerd Aspire',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF005D8C)),
                    ),
                  ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                     children: str.map((strone){
                         return Row(
                            children:[
                              Text("\u2022", style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 117, 169, 195),),), //bullet text
                              SizedBox(width: 10,), //space between bullet and text
                              Expanded(
                                child:Text(strone, style:TextStyle(
                      //  height: 0,
                          fontSize: 14,
                      color: Color(0XFF767A7C),
                      //  overflow: TextOverflow.fade,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'poppins'),), //text
                              )
                            ]
                         );
                     }).toList(),
                  ),
                ),
              ],
            ),
          ),
          
        ],
      ),
    ));
  }
}
