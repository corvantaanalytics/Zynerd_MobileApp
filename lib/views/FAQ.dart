import 'package:flutter/material.dart';
import 'package:zynerd_app/views/About_Us.dart';
import 'package:zynerd_app/views/Allotment.dart';
import 'package:zynerd_app/views/contact_us.dart';

class FAQ extends StatefulWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  _FAQState createState() => _FAQState();
}

void _pushMenu() {
  // return Scaffold(
  //   appBar: AppBar(title: Text('Menu')),
  // );
}

class _FAQState extends State<FAQ> {
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
              MaterialPageRoute(builder: (context) => const Allotments()),
            );
          },
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15, top: 20),
            child: Container(
              height: 35,
              width: 229,
              child: Text("Frequently asked ",
                  // textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF0C0C0C))),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, top: 10),
            child: Container(
              height: 72,
              width: 229,
              child: Text("question",
                  // textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF0C0C0C))),
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  height: 62,
                  width: 100,
                  // width: MediaQuery.of(context).size.width /
                  //     100, // minus 32 due to the margin
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white, // background color of the cards
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Text("Common FAQs",
                      // textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFF85D05))),
                ),
                Container(
                  height: 62,
                  width: 154,
                  // width: MediaQuery.of(context).size.width /
                  //     100, // minus 32 due to the margin
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white, // background color of the cards
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Text("Counselings and Counseling Elegibility",
                      // textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF9DA3A6))),
                ),
                Container(
                  height: 62,
                  width: 154,
                  // width: MediaQuery.of(context).size.width /
                  //     100, // minus 32 due to the margin
                  margin: EdgeInsets.only(right: 30),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white, // background color of the cards
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Text("Reservation & Category /Community Certificates",
                      // textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF9DA3A6))),
                )
              ],
            ),
          ),
          Container(
            child: Column(children: [
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
                            labelText: 'Search by title',
                            contentPadding: EdgeInsets.symmetric(vertical: 7),
                          ))))),
              Container(
                padding: EdgeInsets.all(8.0),
                height: 50,
                width: 390,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFFECECEC),
                  ),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    focusColor: Colors.white,
                    iconEnabledColor: Colors.black,
                    items: <String>['TamilNadu', 'Kerala', 'Karnata']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(fontSize: 14, fontFamily: 'Poppins'),
                        ),
                      );
                    }).toList(),
                    hint: Text(
                      '  All India Counselling',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: 'Poppins'),
                    ),
                    onChanged: (_) {},
                  ),
                ),
              ),
            ]),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 101,
                  // width: MediaQuery.of(context).size.width /
                  //     100, // minus 32 due to the margin
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.only(left: 10, top: 5),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(
                        255, 189, 207, 225), // background color of the cards
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  child: Text("Tag name 1",
                      // textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF005D8C))),
                ),
                Container(
                  height: 30,
                  width: 101,
                  // width: MediaQuery.of(context).size.width /
                  //     100, // minus 32 due to the margin
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.only(left: 10, top: 5),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(
                        255, 189, 207, 225), // background color of the cards
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  child: Text("Tag name 2",
                      // textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF005D8C))),
                ),
                Container(
                  height: 30,
                  width: 101,
                  // width: MediaQuery.of(context).size.width /
                  //     100, // minus 32 due to the margin
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.only(left: 10, top: 5),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(
                        255, 189, 207, 225), // background color of the cards
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  child: Text("Tag name 3",
                      // textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF005D8C))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
