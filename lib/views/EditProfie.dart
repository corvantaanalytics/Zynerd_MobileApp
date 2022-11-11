import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:zynerd_app/views/EditProfilePage.dart';
import 'package:zynerd_app/views/ProfileChangePassword.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

enum AllCounsel { CounsellingRanking, NEETPGRank }

void _pushMenu() {}

class _EditProfileState extends State<EditProfile> {
  String _selectedCounsel = 'Counselling Ranking';
  double _startValue = 20.0;
  double _endValue = 90.0;
  String dropdownValue = 'Select';
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
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => const ProfileChangePassword()),
              // );
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
      body: ListView(
        children: [
          Container(
            // height: 722,
            width: 315, // minus 32 due to the margin
            margin: EdgeInsets.all(14.0),
            padding: EdgeInsets.all(14.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(
                  255, 113, 21, 21), // background color of the cards
              borderRadius: BorderRadius.all(Radius.circular(14.0)),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(14.0),
                  padding: EdgeInsets.all(14.0),
                  decoration: BoxDecoration(
                    // background color of the cards
                    borderRadius: BorderRadius.all(Radius.circular(14.0)),
                  ),
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 205,
                            width: 400,
                            margin: EdgeInsets.only(bottom: 120),
                            padding: EdgeInsets.only(top: 2000, right: 200),
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Dashboard/Rectangle.png'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfilePage()),
                        );
                      },
                      child: const Text(
                        'Edit Profile',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: 'poppins',
                          color: Color(0xFF005D8C),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 330,
                  child: Row(
                    children: [
                      Center(
                        child: Column(
                          children: [
                            new Image.asset(
                              "assets/images/DOB.png",
                              // width: 40,
                              // height: 40,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 80,
                        child: Column(
                          children: [
                            Text(
                              'Date of Birth',
                              maxLines: 1,
                              overflow: TextOverflow.visible,
                              softWrap: false,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  color: Color(0xFF9DA3A6)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Container(
                        width: 80,
                        child: Column(
                          children: [
                            Text(
                              'Nov 28, 1995',
                              maxLines: 1,
                              overflow: TextOverflow.visible,
                              softWrap: false,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF0C0C0C)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 330,
                  child: Row(
                    children: [
                      Center(
                        child: Column(
                          children: [
                            new Image.asset(
                              "assets/images/Call.png",
                              // width: 40,
                              // height: 40,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 80,
                        child: Column(
                          children: [
                            Text(
                              'Phone Number',
                              maxLines: 1,
                              overflow: TextOverflow.visible,
                              softWrap: false,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF9DA3A6)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Container(
                        width: 80,
                        child: Column(
                          children: [
                            Text(
                              '+91 9547985262',
                              maxLines: 1,
                              overflow: TextOverflow.visible,
                              softWrap: false,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF0C0C0C)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 330,
                  child: Row(
                    children: [
                      Center(
                        child: Column(
                          children: [
                            new Image.asset(
                              "assets/images/Place.png",
                              // width: 40,
                              // height: 40,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 80,
                        child: Column(
                          children: [
                            Text(
                              'State',
                              maxLines: 1,
                              overflow: TextOverflow.visible,
                              softWrap: false,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Color(0xFF9DA3A6)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      Container(
                        width: 80,
                        child: Column(
                          children: [
                            Text(
                              'Tamilnadu',
                              maxLines: 1,
                              overflow: TextOverflow.visible,
                              softWrap: false,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF0C0C0C)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 330,
                  child: Row(
                    children: [
                      Center(
                        child: Column(
                          children: [
                            new Image.asset(
                              "assets/images/Date.png",
                              // width: 40,
                              // height: 40,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 80,
                        child: Column(
                          children: [
                            Text(
                              'Date Joined',
                              maxLines: 1,
                              overflow: TextOverflow.visible,
                              softWrap: false,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  color: Color(0xFF9DA3A6)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Container(
                        width: 80,
                        child: Column(
                          children: [
                            Text(
                              'Jan 11, 2022',
                              maxLines: 1,
                              overflow: TextOverflow.visible,
                              softWrap: false,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF0C0C0C)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 330,
                  child: Row(
                    children: [
                      Center(
                        child: Column(
                          children: [
                            new Image.asset(
                              "assets/images/Exam.png",
                              // width: 40,
                              // height: 40,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 80,
                        child: Column(
                          children: [
                            Text(
                              'Preferred Exam',
                              maxLines: 1,
                              overflow: TextOverflow.visible,
                              softWrap: false,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  color: Color(0xFF9DA3A6)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Container(
                        width: 80,
                        child: Column(
                          children: [
                            Text(
                              'NEET UG',
                              maxLines: 1,
                              overflow: TextOverflow.visible,
                              softWrap: false,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF0C0C0C)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Center(
                      child: SizedBox(
                          height: 48, //height of button
                          width: 335, //width of button
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ProfileChangePassword()),
                              );
                            },
                            child: Text(
                              'Change Password',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ))),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 350,
                width: 380, // minus 32 due to the margin
                margin: EdgeInsets.all(16.0),
                padding: EdgeInsets.only(right: 50, top: 20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(
                      255, 152, 74, 74), // background color of the cards
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 130),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 50),
                      child: Text(
                        'My Subscription',
                        // textAlign: TextAlign.left,

                        style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            height: 240,
                            width: 300,
                            margin: EdgeInsets.all(10.0),
                            padding: EdgeInsets.only(bottom: 160, right: 120),
                            decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0))),
                            child: Row(
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                  left: 20,
                                  top: 150,
                                )),
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 20,
                                              backgroundColor:
                                                  Color(0xFFF85D05),
                                              child: Padding(
                                                padding: const EdgeInsets.all(
                                                    8), // Border radius
                                                child: ClipOval(
                                                    child: Image.asset(
                                                        'assets/images/Z sub.png')),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Container(
                                        width: 10,
                                        child: Column(
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 10)),
                                            Text(
                                              "Zynerd Archive- NEET PG",
                                              maxLines: 1,
                                              overflow: TextOverflow.visible,
                                              softWrap: false,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF0C0C0C)),
                                            ),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 1)),
                                            Text(
                                              'Started from Jan 11, 2022',
                                              maxLines: 1,
                                              overflow: TextOverflow.visible,
                                              softWrap: false,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12,
                                                  color: Color(0xFF767A7C)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
