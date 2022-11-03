import 'package:flutter/material.dart';
import 'package:zynerd_app/views/About_Us.dart';
import 'package:zynerd_app/views/Allotment.dart';
import 'package:zynerd_app/views/SeatMatrix.dart';
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
        backgroundColor: Color(0xFFE9E9E9),
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
              MaterialPageRoute(builder: (context) => Allotments()),
            );
          },
        ),
        leadingWidth: 200,
      ),
      body: Container(
        child: ListView(
          // scrollDirection: Axis.horizontal,
          children: <Widget>[
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
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
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
                    width: 250,
                    // width: MediaQuery.of(context).size.width /
                    //     100, // minus 32 due to the margin
                    margin: EdgeInsets.only(right: 30),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.white, // background color of the cards
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Text(
                        "Reservation & Category /Community Certificates",
                        // textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF9DA3A6))),
                  ),
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
                            padding:
                                EdgeInsets.only(left: 15, right: 15, top: 5),
                            child: TextFormField(
                                decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search by title",
                              hintStyle: TextStyle(fontFamily: 'Poppins'),
                              // labelText: 'Search by title',
                              contentPadding: EdgeInsets.symmetric(vertical: 7),
                            ))))),
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.only(left: 10, top: 5),
                  decoration: BoxDecoration(
                    color: Colors.white, // background color of the cards
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Column(
                    children: [
                      ExpansionTile(
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                        title: RichText(
                          text: TextSpan(
                            children: const [
                              TextSpan(
                                text: 'All India Counselling',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF0C0C0C),
                                ),
                              ),
                            ],
                          ),
                        ),
                        children: [
                          ListTile(
                            contentPadding:
                                EdgeInsets.only(left: 10, right: 10),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(1),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
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
                      color: Color(0xFFEAF0F3), // background color of the cards
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
                      color: Color(0xFFEAF0F3), // background color of the cards
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
                      color: Color(0xFFEAF0F3), // background color of the cards
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
                  Container(
                    height: 30,
                    width: 101,
                    // width: MediaQuery.of(context).size.width /
                    //     100, // minus 32 due to the margin
                    margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.only(left: 10, top: 5),
                    decoration: BoxDecoration(
                      color: Color(0xFFEAF0F3), // background color of the cards
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Text("Tag name 4",
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
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.only(left: 10, top: 5),
              decoration: BoxDecoration(
                color: Colors.white, // background color of the cards
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Column(
                children: [
                  ExpansionTile(
                    expandedCrossAxisAlignment: CrossAxisAlignment.start,
                    title: RichText(
                      text: TextSpan(
                        children: const [
                          TextSpan(
                            text: 'Set 1 -',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF767A7C),
                            ),
                          ),
                          TextSpan(
                            text: '\tPercentile Calculator Tool',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF0C0C0C),
                            ),
                          ),
                        ],
                      ),
                    ),
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.only(left: 10, right: 10),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(1),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Color(0xFFF8F8F8),
                                child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'NEET PG 2021 Percentile calculator Tool ',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF0C0C0C)),
                                      ),
                                      Text(
                                        'Enter ranks in the yellow cell to get NEET PG percentile.',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF767A7C)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 20, right: 10, top: 10, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF005D8C),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                padding: EdgeInsets.all(10),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Calculator',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.only(left: 10, top: 5),
              decoration: BoxDecoration(
                color: Colors.white, // background color of the cards
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Column(
                children: [
                  ExpansionTile(
                    expandedCrossAxisAlignment: CrossAxisAlignment.start,
                    title: RichText(
                      text: TextSpan(
                        children: const [
                          TextSpan(
                            text: 'All India 2021 (MCC)-Registration',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF0C0C0C),
                            ),
                          ),
                          TextSpan(
                            text: 'Fee and Institute Fee Payment',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF0C0C0C),
                            ),
                          ),
                        ],
                      ),
                    ),
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.only(left: 10, right: 10),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(1),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.only(left: 10, top: 5),
              decoration: BoxDecoration(
                color: Colors.white, // background color of the cards
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Column(
                children: [
                  ExpansionTile(
                    expandedCrossAxisAlignment: CrossAxisAlignment.start,
                    title: RichText(
                      text: TextSpan(
                        children: const [
                          TextSpan(
                            text: 'Permitted Seats vs Recognized     ',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF0C0C0C),
                            ),
                          ),
                          TextSpan(
                            text: 'Seats',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF0C0C0C),
                            ),
                          ),
                        ],
                      ),
                    ),
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.only(left: 10, right: 10),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(1),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
