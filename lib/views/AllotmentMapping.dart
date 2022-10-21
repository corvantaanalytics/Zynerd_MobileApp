import 'package:flutter/material.dart';
import './landing.dart';

class AllotmentsMapping extends StatefulWidget {
  const AllotmentsMapping({Key? key}) : super(key: key);

  @override
  _AllotmentMappingState createState() =>  _AllotmentMappingState();
}

enum AllCounsel { CounsellingRanking, NEETPGRank }

class  _AllotmentMappingState extends State<AllotmentsMapping> {
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
          width: 110,
          child: IconButton(
            icon: Image.asset(
              'assets/images/Landing/ZyNerd-Final-Logo.png',
              height: 28,
              width: 120,
              fit: BoxFit.fill,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Landing()),
              );
            },
          ),
        ),
         titleSpacing: -10,
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
            width: 70,
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
                          'Allotments Mapping',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          ),
                          // textAlign: TextAlign.start,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        height: 50,
                        width: 450,
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
                          // style: TextStyle(fontSize: 16, color: Colors.white),
                          // borderRadius: 5,
                          iconEnabledColor: Colors.black,
                          items: <String>['TamilNadu', 'Kerala', 'Karnata']
                              .map((String value) {
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
                            'Central',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontFamily: 'Poppins'),
                          ),
                          onChanged: (_) {},
                        )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Text(
                          'Rounds',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              color: Color(0xFF767A7C)),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        height: 50,
                        width: 160,
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
                          // style: TextStyle(fontSize: 16, color: Colors.white),
                          // borderRadius: 5,
                          iconEnabledColor: Colors.black,
                          items: <String>['1', '2', '3']
                              .map((String value) {
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
                            'Rounds',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontFamily: 'Poppins'),
                          ),
                          onChanged: (_) {},
                        )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Divider(
            //   thickness: 2,
            //   indent: 0,
            //   endIndent: 0,
            //   color: Color(0xFFECECEC),
            //   height: 1.5,
            // ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     
                     
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'NEET RANK',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF767A7C)),
                            ),
                            SliderTheme(
                              data: SliderThemeData(
                                rangeValueIndicatorShape:
                                    PaddleRangeSliderValueIndicatorShape(),
                              ),
                              child: RangeSlider(
                                min: 0.0,
                                max: 100.0,
                                labels: RangeLabels(
                                    _startValue.round().toString(),
                                    _endValue.round().toString()),
                                activeColor: Color(0xFF005D8C),
                                // inactiveColor: Color(0xFFF8F8F8),
                                values: RangeValues(_startValue, _endValue),
                                // value: _startValue,
                                onChanged: (value) {
                                  setState(() {
                                    _startValue = value.start;
                                    _endValue = value.end;
                                  });
                                },
                              ),
                            ),
                            Row(
                              children: [
                                 SizedBox(
                                width: 25,
                      ),
                                   Container(
                        padding: EdgeInsets.all(8.0),
                        height: 50,
                        width: 160,
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
                          // style: TextStyle(fontSize: 16, color: Colors.white),
                          // borderRadius: 5,
                          iconEnabledColor: Colors.black,
                          items: <String>['TamilNadu', 'Kerala', 'Karnata']
                              .map((String value) {
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
                            'MIN',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontFamily: 'Poppins'),
                          ),
                          onChanged: (_) {},
                        )),
                      ),
                      SizedBox(
                                width: 10,
                      ),
                         Container(
                        padding: EdgeInsets.all(8.0),
                        height: 50,
                        width: 160,
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
                          // style: TextStyle(fontSize: 16, color: Colors.white),
                          // borderRadius: 5,
                          iconEnabledColor: Colors.black,
                          items: <String>['TamilNadu', 'Kerala', 'Karnata']
                              .map((String value) {
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
                            'MAX',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontFamily: 'Poppins'),
                          ),
                          onChanged: (_) {},
                        )),
                      ),
                              ],
                            ),
SizedBox(
  height: 20,
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
                  onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const Dashboard()),
            // );
          },
                child: Text(
                                  'Go',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                     fontFamily: 'poppins',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                     ),
                                ),
              )
            )
        ),
                          ],
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
    );
  }
}
