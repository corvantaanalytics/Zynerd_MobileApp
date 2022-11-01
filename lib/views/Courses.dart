import 'package:flutter/material.dart';
// import 'package:zynerd_app/views/AllotmentMapping.dart';
import 'landing.dart';

class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  _CoursesState createState() => _CoursesState();
}

enum AllCounsel { CounsellingRanking, NEETPGRank }

class _CoursesState extends State<Courses> {
  String _selectedCounsel = 'Counselling Ranking';
  double _startValue = 20.0;
  double _endValue = 90.0;
  String dropdownValue = 'Select';
  // AllCounsel? _allcounsel = AllCounsel.CounsellingRanking;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          // padding: EdgeInsets.only(right: 20),
          width: 100,
          child: IconButton(
            icon: Image.asset(
              'assets/images/Landing/ZyNerd-Final-Logo.png',
              height: 25,
              width: 400,
              fit: BoxFit.fill,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Courses()),
              );
            },
          ),
        ),
        // titleSpacing: -20,
        // centerTitle: false,
        leading: PopupMenuButton(
          child: Icon(
            Icons.menu_sharp,
            color: Colors.blue[900],
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          itemBuilder: (context) => [
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
        actions: [
          Container(
            width: 30,
            child: Image.asset('assets/images/profile_pic.png'),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.zero,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 5, bottom: 15),
                        child: Text(
                          'Courses',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          ),
                          // textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 2,
              indent: 0,
              endIndent: 0,
              color: Color(0xFFECECEC),
              height: 1.5,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.grey[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Search by Names',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins'),
                          ),
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        new BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 15, top: 5),
                                      child: TextFormField(
                                          decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Search by Names",
                                        hintStyle:
                                            TextStyle(fontFamily: 'Poppins'),
                                        contentPadding:
                                            EdgeInsets.symmetric(vertical: 10),
                                      ))))),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Clinical Types',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            height: 50,
                            width: 335,
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
                                items: <String>[
                                  'TamilNadu',
                                  'Kerala',
                                  'Karnata'
                                ].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                          fontSize: 14, fontFamily: 'Poppins'),
                                    ),
                                  );
                                }).toList(),
                                hint: Text(
                                  'Select',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily: 'Poppins'),
                                ),
                                onChanged: (_) {},
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Degree Types',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            height: 50,
                            width: 335,
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
                                items: <String>[
                                  'TamilNadu',
                                  'Kerala',
                                  'Karnata'
                                ].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                          fontSize: 14, fontFamily: 'Poppins'),
                                    ),
                                  );
                                }).toList(),
                                hint: Text(
                                  'Select',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily: 'Poppins'),
                                ),
                                onChanged: (_) {},
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Degree Terms',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            height: 50,
                            width: 335,
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
                                items: <String>[
                                  'TamilNadu',
                                  'Kerala',
                                  'Karnata'
                                ].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                          fontSize: 14, fontFamily: 'Poppins'),
                                    ),
                                  );
                                }).toList(),
                                hint: Text(
                                  'Select',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily: 'Poppins'),
                                ),
                                onChanged: (_) {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
