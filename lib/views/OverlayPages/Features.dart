import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:zynerd_app/views/OverlayPages/Remarks.dart';
import 'package:zynerd_app/views/Signin.dart';
import "package:zynerd_app/views/landing.dart";
import 'package:zynerd_app/views/contact_us.dart';

class AspireFeatures extends StatefulWidget {
  const AspireFeatures({Key? key}) : super(key: key);

  @override
  AspireFeaturesState createState() => AspireFeaturesState();
}

void _pushMenu() {
  // return Scaffold(
  //   appBar: AppBar(title: Text('Menu')),
  // );
}

class AspireFeaturesState extends State<AspireFeatures> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
              MaterialPageRoute(builder: (context) => const Remarks()),
            );
          },
        ),
        leadingWidth: 200,
        actions: [
          // OutlinedButton(
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => const Signin()),
          //     );
          //   },
          //   child: const Text('Sign In /Sign Up'),
          // ),
          Icon(
            Icons.menu_sharp,
            color: Colors.blue[900],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
          )
        ],
      ),
      body: ListView(children: [
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black, size: 31),
              onPressed: () => Navigator.of(context).pop(),
            ),
            Flexible(
              child: Text(
                'ZyNerd Aspire (NEET UG) Features ',
                // textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                // textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 31,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins'),
              ),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Counseling Information 2020',
            // textAlign: TextAlign.center,
            style: TextStyle(
                height: 2.0,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
                color: Color(0XFF0C0C0C)),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "List of Institutes under MCC NEET UG 2020 counseling 2020 with details",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                fontFamily: 'Poppins',
                color: Color(0XFF767A7C)),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Allotment and Closing Ranks - NEET UG Data 2020 (MBBS/BDS) for MCC’s All India Counselling',
            // textAlign: TextAlign.center,
            style: TextStyle(
                height: 2.0,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
                color: Color(0XFF0C0C0C)),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Complete Information on NEET UG in an friendly,viewable, and usable format. Assured accurate, comprehensive info",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                fontFamily: 'Poppins',
                color: Color(0XFF767A7C)),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Correlate Information between rounds (shifts across rounds in 2020 instantly formaking right decisions for 2021)',
            // textAlign: TextAlign.center,
            style: TextStyle(
                height: 2.0,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
                color: Color(0XFF0C0C0C)),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Only at www.zynerd.com‘s Metrics in tabular filterable format",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                fontFamily: 'Poppins',
                color: Color(0XFF767A7C)),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'View accurate allotments and closing ranks data of 2020 instantly across counselings, filterable across rank range, courses, Categories, ',
            // textAlign: TextAlign.center,
            style: TextStyle(
                height: 2.0,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
                color: Color(0XFF0C0C0C)),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Only at www.zynerd.com‘s Metrics in tabular filterable format",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                fontFamily: 'Poppins',
                color: Color(0XFF767A7C)),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'SMART CHOICE FILLING with Seat Matrix 2021',
            // textAlign: TextAlign.center,
            style: TextStyle(
                height: 2.0,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
                color: Color(0XFF0C0C0C)),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Available in usable filterable format correlating with 2020 closing ranks. Candidate preferences of 2020for selection of choices, ordering of choices of all States",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                fontFamily: 'Poppins',
                color: Color(0XFF767A7C)),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Terms of Subscription ',
            // textAlign: TextAlign.center,
            style: TextStyle(
                height: 2.0,
                fontSize: 22,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                color: Color(0XFF0C0C0C)),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Period of Subscription',
            // textAlign: TextAlign.center,
            style: TextStyle(
                height: 2.0,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
                color: Color(0XFF0C0C0C)),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "90 days from the date of subscription (or) till the date of the last date of Admissions for NEET UG 2021 session (2021-22 academic session), whichever is later. Valid only for admissions done through NEET UG 2021 and access to all channels, forums, and website registrations shall be valid only till the end of the service period",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                fontFamily: 'Poppins',
                color: Color(0XFF767A7C)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Scope of Seats',
            // textAlign: TextAlign.center,
            style: TextStyle(
                height: 2.0,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
                color: Color(0XFF0C0C0C)),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "All MBBS/DNB seats in Govt, Private, Deemed Institutes allotted through All India Counseling, and State Counselings through NEET UG 2020.  Does not included datafor B.Sc. Nursing since they were not part of NEET UG counseling in 2020.",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                fontFamily: 'Poppins',
                color: Color(0XFF767A7C)),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Information Scope',
            // textAlign: TextAlign.center,
            style: TextStyle(
                height: 2.0,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
                color: Color(0XFF0C0C0C)),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Information on MCC’s MBBS/BDS counseling based on NEET UG 2020. Seat Matrix of Round 1 of NEET UG 2021 for Smart Choice filling. Aspire package does not include updates on 2021 NEET UG Allotments and Closing Ranks or State Counseling Information",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                fontFamily: 'Poppins',
                color: Color(0XFF767A7C)),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Disclaimer',
            // textAlign: TextAlign.center,
            style: TextStyle(
                height: 2.0,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
                color: Color(0XFF0C0C0C)),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Not all information is shared by all counseling authorities. The data that is available in the website is limited to the information shared by the counseling authorities, and historical information to the extent available. Information on institutes would be as available in MCC. Allotments / Closing ranks shall be provided based on existing data and as shared by DGHS(MCC).",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                fontFamily: 'Poppins',
                color: Color(0XFF767A7C)),
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ]),
    ));
  }
}
