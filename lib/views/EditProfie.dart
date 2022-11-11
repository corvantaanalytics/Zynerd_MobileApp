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
            child: Image.asset('assets/images/Dashboard/DefaultProfile.png'),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Container(
            // height: 722,
            width: 315, // minus 32 due to the margin
            margin: EdgeInsets.all(20.0),
            // padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF), // background color of the cards
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(20.0),
                  padding: EdgeInsets.all(20.0),
                  height: 205,
                  width: 400,
                  // margin: EdgeInsets.only(bottom: 120),
                  // padding: EdgeInsets.only(top: 2000, right: 200),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    image: DecorationImage(
                        image:
                            AssetImage('assets/images/Dashboard/Rectangle.png'),
                        fit: BoxFit.fill),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    child: Container(
                      alignment: Alignment(0.0, 4.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/images/Dashboard/DefaultProfile.png'),
                        radius: 60.0,
                      ),
                    ),
                  ),
                  // child: Column(
                  //   children: [
                  //     Stack(
                  //       alignment: Alignment.center,
                  //       children: [
                  //         Container(
                  //           height: 205,
                  //           width: 400,
                  //           margin: EdgeInsets.only(bottom: 120),
                  //           padding: EdgeInsets.only(top: 2000, right: 200),
                  //           // decoration: const BoxDecoration(
                  //           //   borderRadius:
                  //           //       BorderRadius.all(Radius.circular(20)),
                  //           //   image: DecorationImage(
                  //           //       image: AssetImage(
                  //           //           'assets/images/Dashboard/Rectangle.png'),
                  //           //       fit: BoxFit.fill),
                  //           // ),
                  //           child: Container(
                  //             width: double.infinity,
                  //             height: 200,
                  //             child: Container(
                  //               alignment: Alignment(0.0, 2.5),
                  //               child: Text('data'),
                  //               // child: CircleAvatar(
                  //               //   backgroundImage: AssetImage(
                  //               //       'assets/images/Dashboard/DefaultProfile.png'),
                  //               // ),
                  //             ),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 50, bottom: 20),
                  child: Column(
                    children: const [
                      Text(
                        'Esther P.',
                        style: TextStyle(
                            fontSize: 26,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'esterp@gmail.com',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                            color: Color(0xFF767A7C)),
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
                Divider(),
                Container(
                  width: 330,
                  child: Row(
                    children: [
                      Center(
                        child: Column(
                          children: [
                            Image.asset(
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
                          children: const [
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
                          children: const [
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
                            Image.asset(
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
                          children: const [
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
                          children: const [
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
                            Image.asset(
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
                          children: const [
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
                          children: const [
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
                            Image.asset(
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
                          children: const [
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
                          children: const [
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
                            Image.asset(
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
                          children: const [
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
                          children: const [
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
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFFFFFFF),
              border: Border.all(
                color: Color(0xFFF4F4F4),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Subscription',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: Color(0xFF0C0C0C)),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.zero,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 415,
                          width: 315,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFECECEC),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(20),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Color(0xFFF85D05),
                                        // Border radius
                                        child: Image.asset(
                                          'assets/images/Z sub.png',
                                          fit: BoxFit.fill,
                                          height: 12,
                                          width: 12,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 10,
                                      child: Column(
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.all(7),
                                            child: Text(
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
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 1, left: 7),
                                            child: Text(
                                              'Started from Jan 11, 2022s',
                                              maxLines: 1,
                                              overflow: TextOverflow.visible,
                                              softWrap: false,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12,
                                                  color: Color(0xFF767A7C)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Padding(
                                          padding: EdgeInsets.only(top: 80),
                                          child: RichText(
                                              text: TextSpan(
                                            children: const [
                                              TextSpan(
                                                text: '₹1499',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'Open Sans',
                                                    color: Color(0xFF0C0C0C)),
                                              ),
                                              TextSpan(
                                                text: '\t\tfor 90 days',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF9DA3A6),
                                                ),
                                              ),
                                            ],
                                          ))),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 15, top: 10, bottom: 15),
                                  child: Expanded(
                                    child: Column(
                                      children: const [
                                        ListTile(
                                          leading: Text(
                                            'Status',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF9DA3A6),
                                            ),
                                          ),
                                          trailing: Text('active'),
                                        ),
                                        ListTile(
                                          leading: Text(
                                            'Payment Amount',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF9DA3A6),
                                            ),
                                          ),
                                          trailing: Text(
                                            '₹1499',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Open Sans',
                                                color: Color(0xFF0C0C0C)),
                                          ),
                                        ),
                                        ListTile(
                                          leading: Text(
                                            'Payment Reference ID',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF9DA3A6),
                                            ),
                                          ),
                                          trailing: Text(
                                            'Pay_Im5ns8gbK3wfBm',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Open Sans',
                                                color: Color(0xFF0C0C0C)),
                                          ),
                                        ),
                                        ListTile(
                                          leading: Text(
                                            'Expire on',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF9DA3A6),
                                            ),
                                          ),
                                          trailing: Text(
                                            'April 11, 2022',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Open Sans',
                                                color: Color(0xFF0C0C0C)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 415,
                          width: 315,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFECECEC),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(20),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Color(0xFFF85D05),
                                        // Border radius
                                        child: Image.asset(
                                          'assets/images/Z sub.png',
                                          fit: BoxFit.fill,
                                          height: 12,
                                          width: 12,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 10,
                                      child: Column(
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.all(7),
                                            child: Text(
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
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 1, left: 7),
                                            child: Text(
                                              'Started from Jan 11, 2022s',
                                              maxLines: 1,
                                              overflow: TextOverflow.visible,
                                              softWrap: false,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12,
                                                  color: Color(0xFF767A7C)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Padding(
                                          padding: EdgeInsets.only(top: 80),
                                          child: RichText(
                                              text: TextSpan(
                                            children: const [
                                              TextSpan(
                                                text: '₹1499',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'Open Sans',
                                                    color: Color(0xFF0C0C0C)),
                                              ),
                                              TextSpan(
                                                text: '\t\tfor 90 days',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF9DA3A6),
                                                ),
                                              ),
                                            ],
                                          ))),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 15, top: 10, bottom: 15),
                                  child: Expanded(
                                    child: Column(
                                      children: const [
                                        ListTile(
                                          leading: Text(
                                            'Status',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF9DA3A6),
                                            ),
                                          ),
                                          trailing: Text('active'),
                                        ),
                                        ListTile(
                                          leading: Text(
                                            'Payment Amount',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF9DA3A6),
                                            ),
                                          ),
                                          trailing: Text(
                                            '₹1499',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Open Sans',
                                                color: Color(0xFF0C0C0C)),
                                          ),
                                        ),
                                        ListTile(
                                          leading: Text(
                                            'Payment Reference ID',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF9DA3A6),
                                            ),
                                          ),
                                          trailing: Text(
                                            'Pay_Im5ns8gbK3wfBm',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Open Sans',
                                                color: Color(0xFF0C0C0C)),
                                          ),
                                        ),
                                        ListTile(
                                          leading: Text(
                                            'Expire on',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF9DA3A6),
                                            ),
                                          ),
                                          trailing: Text(
                                            'April 11, 2022',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Open Sans',
                                                color: Color(0xFF0C0C0C)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 415,
                          width: 315,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFECECEC),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(20),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Color(0xFFF85D05),
                                        // Border radius
                                        child: Image.asset(
                                          'assets/images/Z sub.png',
                                          fit: BoxFit.fill,
                                          height: 12,
                                          width: 12,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 10,
                                      child: Column(
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.all(7),
                                            child: Text(
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
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 1, left: 7),
                                            child: Text(
                                              'Started from Jan 11, 2022s',
                                              maxLines: 1,
                                              overflow: TextOverflow.visible,
                                              softWrap: false,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12,
                                                  color: Color(0xFF767A7C)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Padding(
                                          padding: EdgeInsets.only(top: 80),
                                          child: RichText(
                                              text: TextSpan(
                                            children: const [
                                              TextSpan(
                                                text: '₹1499',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'Open Sans',
                                                    color: Color(0xFF0C0C0C)),
                                              ),
                                              TextSpan(
                                                text: '\t\tfor 90 days',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF9DA3A6),
                                                ),
                                              ),
                                            ],
                                          ))),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 15, top: 10, bottom: 15),
                                  child: Expanded(
                                    child: Column(
                                      children: const [
                                        ListTile(
                                          leading: Text(
                                            'Status',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF9DA3A6),
                                            ),
                                          ),
                                          trailing: Text('active'),
                                        ),
                                        ListTile(
                                          leading: Text(
                                            'Payment Amount',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF9DA3A6),
                                            ),
                                          ),
                                          trailing: Text(
                                            '₹1499',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Open Sans',
                                                color: Color(0xFF0C0C0C)),
                                          ),
                                        ),
                                        ListTile(
                                          leading: Text(
                                            'Payment Reference ID',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF9DA3A6),
                                            ),
                                          ),
                                          trailing: Text(
                                            'Pay_Im5ns8gbK3wfBm',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Open Sans',
                                                color: Color(0xFF0C0C0C)),
                                          ),
                                        ),
                                        ListTile(
                                          leading: Text(
                                            'Expire on',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF9DA3A6),
                                            ),
                                          ),
                                          trailing: Text(
                                            'April 11, 2022',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Open Sans',
                                                color: Color(0xFF0C0C0C)),
                                          ),
                                        ),
                                      ],
                                    ),
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
        ],
      ),
    );
  }
}
