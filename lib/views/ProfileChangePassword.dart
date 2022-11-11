import 'package:flutter/material.dart';
import 'package:zynerd_app/views/Courses.dart';
import 'package:zynerd_app/views/EditProfie.dart';
// import 'package:zynerd_app/views/AllotmentMapping.dart';
import 'landing.dart';

class ProfileChangePassword extends StatefulWidget {
  const ProfileChangePassword({Key? key}) : super(key: key);

  @override
  _ProfileChangePasswordState createState() => _ProfileChangePasswordState();
}

enum AllCounsel { CounsellingRanking, NEETPGRank }

class _ProfileChangePasswordState extends State<ProfileChangePassword> {
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
                MaterialPageRoute(
                    builder: (context) => const ProfileChangePassword()),
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
            // Divider(
            //   thickness: 2,
            //   indent: 0,
            //   endIndent: 0,
            //   color: Color(0xFFECECEC),
            //   height: 1.5,
            // ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back,
                              color: Colors.black, size: 31),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                        Flexible(
                          child: Text(
                            'Change Password',
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
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Current Password',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF9DA3A6),
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Container(
                                  child: Padding(
                                padding: EdgeInsets.only(left: 15, top: 5),
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(fontFamily: 'Poppins'),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Color(0xFFE9E9E9)),
                                        borderRadius:
                                            new BorderRadius.circular(10.0)),
                                    focusedBorder: OutlineInputBorder(
                                        // borderSide: BorderSide(
                                        //     width: 3, color: Color(0xffF02E65)),
                                        ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 3,
                                          color: Color.fromARGB(
                                              255, 66, 125, 145)),
                                    ),
                                  ),
                                ),
                              ))),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'New Password',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF9DA3A6),
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Container(
                                  child: Padding(
                                padding: EdgeInsets.only(left: 15, top: 5),
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(fontFamily: 'Poppins'),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Color(0xFFE9E9E9)),
                                        borderRadius:
                                            new BorderRadius.circular(10.0)),
                                    focusedBorder: OutlineInputBorder(
                                        // borderSide: BorderSide(
                                        //     width: 3, color: Color(0xffF02E65)),
                                        ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 3,
                                          color: Color.fromARGB(
                                              255, 66, 125, 145)),
                                    ),
                                  ),
                                ),
                              ))),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Confirm Password',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF9DA3A6),
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Container(
                                  child: Padding(
                                padding: EdgeInsets.only(left: 15, top: 5),
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(fontFamily: 'Poppins'),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Color(0xFFE9E9E9)),
                                        borderRadius:
                                            new BorderRadius.circular(10.0)),
                                    focusedBorder: OutlineInputBorder(
                                        // borderSide: BorderSide(
                                        //     width: 3, color: Color(0xffF02E65)),
                                        ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 3,
                                          color: Color.fromARGB(
                                              255, 66, 125, 145)),
                                    ),
                                  ),
                                ),
                              ))),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 20, right: 30, top: 10, bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xFF005D8C),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    padding: EdgeInsets.all(5),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    '  Save  ',
                                    style: TextStyle(
                                      fontSize: 15,
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
