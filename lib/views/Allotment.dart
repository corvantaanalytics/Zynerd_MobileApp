import 'package:flutter/material.dart';
import './landing.dart';

class Allotments extends StatefulWidget {
  const Allotments({Key? key}) : super(key: key);

  @override
  _AllotmentState createState() => _AllotmentState();
}

enum AllCounsel { CounsellingRanking, NEETPGRank }

class _AllotmentState extends State<Allotments> {
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
                MaterialPageRoute(builder: (context) => const Landing()),
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
                          'Allotments',
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
                          'Counselling',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              color: Color(0xFF767A7C)),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Row(
                          children: const [
                            Card(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Color(0xFFF85D05)),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(15),
                                child: Text(
                                  'All India Counselling\n\nPG Medical - All India',
                                  // textScaleFactor: 1.5,
                                ),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.only(left: 15),
                              color: Color(0xFFF8F8F8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'All India Counselling\n\nPG Medical - All India',
                                  // textScaleFactor: 1.5,
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
            Divider(
              thickness: 2,
              indent: 0,
              endIndent: 0,
              color: Color(0xFFECECEC),
              height: 1.5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 20),
                        child: Text(
                          'All India Counselling - SS Medical',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              color: Color(0xFF0C0C0C)),
                        ),
                      ),
                      ListTile(
                        title: const Text(
                          'Counselling Ranking',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins'),
                        ),
                        leading: Radio<String>(
                          fillColor: MaterialStateColor.resolveWith(
                              (states) => Color(0xFF005D8C)),
                          focusColor: MaterialStateColor.resolveWith(
                              (states) => Colors.white),
                          value: 'Counselling Ranking',
                          groupValue: _selectedCounsel,
                          onChanged: (value) {
                            setState(() {
                              _selectedCounsel = value!;
                            });
                          },
                          // materialTapTargetSize:
                          //     MaterialTapTargetSize.shrinkWrap,
                          // visualDensity: const VisualDensity(
                          //     horizontal: VisualDensity.maximumDensity,
                          //     ),
                        ),
                      ),
                      ListTile(
                        title: const Text(
                          'NEET PG Rank (All India Rank)',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins'),
                        ),
                        leading: Radio<String>(
                          fillColor: MaterialStateColor.resolveWith(
                              (states) => Color(0xFF005D8C)),
                          focusColor: MaterialStateColor.resolveWith(
                              (states) => Colors.white),
                          value: 'NEETPGRank',
                          groupValue: _selectedCounsel,
                          onChanged: (value) {
                            setState(() {
                              _selectedCounsel = value!;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rank',
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
                            'Category',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins'),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Quota',
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
                            // child: DropdownButton<String>(
                            //   value: dropdownValue,
                            //   onChanged: (String? newValue) {
                            //     setState(() {
                            //       dropdownValue = newValue!;
                            //     });
                            //   },
                            //   items: <String>[
                            //     'One',
                            //     'Two',
                            //     'Three'
                            //   ].map<DropdownMenuItem<String>>((String value) {
                            //     return DropdownMenuItem<String>(
                            //       value: value,
                            //       child: Text(value),
                            //     );
                            //   }).toList(),
                            //   hint: Text('data'),
                            // ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                focusColor: Colors.white,
                                // style: TextStyle(fontSize: 16, color: Colors.white),
                                // borderRadius: 5,
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
                              'Category',
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
                            // child: DropdownButton<String>(
                            //   value: dropdownValue,
                            //   onChanged: (String? newValue) {
                            //     setState(() {
                            //       dropdownValue = newValue!;
                            //     });
                            //   },
                            //   items: <String>[
                            //     'One',
                            //     'Two',
                            //     'Three'
                            //   ].map<DropdownMenuItem<String>>((String value) {
                            //     return DropdownMenuItem<String>(
                            //       value: value,
                            //       child: Text(value),
                            //     );
                            //   }).toList(),
                            //   hint: Text('data'),
                            // ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                focusColor: Colors.white,
                                // style: TextStyle(fontSize: 16, color: Colors.white),
                                // borderRadius: 5,
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
                            'Year & Round',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins'),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Year',
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
                            // child: DropdownButton<String>(
                            //   value: dropdownValue,
                            //   onChanged: (String? newValue) {
                            //     setState(() {
                            //       dropdownValue = newValue!;
                            //     });
                            //   },
                            //   items: <String>[
                            //     'One',
                            //     'Two',
                            //     'Three'
                            //   ].map<DropdownMenuItem<String>>((String value) {
                            //     return DropdownMenuItem<String>(
                            //       value: value,
                            //       child: Text(value),
                            //     );
                            //   }).toList(),
                            //   hint: Text('data'),
                            // ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                focusColor: Colors.white,
                                // style: TextStyle(fontSize: 16, color: Colors.white),
                                // borderRadius: 5,
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
                              'Round',
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
                            // child: DropdownButton<String>(
                            //   value: dropdownValue,
                            //   onChanged: (String? newValue) {
                            //     setState(() {
                            //       dropdownValue = newValue!;
                            //     });
                            //   },
                            //   items: <String>[
                            //     'One',
                            //     'Two',
                            //     'Three'
                            //   ].map<DropdownMenuItem<String>>((String value) {
                            //     return DropdownMenuItem<String>(
                            //       value: value,
                            //       child: Text(value),
                            //     );
                            //   }).toList(),
                            //   hint: Text('data'),
                            // ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                focusColor: Colors.white,
                                // style: TextStyle(fontSize: 16, color: Colors.white),
                                // borderRadius: 5,
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
                            'Institute',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins'),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'State',
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
                            // child: DropdownButton<String>(
                            //   value: dropdownValue,
                            //   onChanged: (String? newValue) {
                            //     setState(() {
                            //       dropdownValue = newValue!;
                            //     });
                            //   },
                            //   items: <String>[
                            //     'One',
                            //     'Two',
                            //     'Three'
                            //   ].map<DropdownMenuItem<String>>((String value) {
                            //     return DropdownMenuItem<String>(
                            //       value: value,
                            //       child: Text(value),
                            //     );
                            //   }).toList(),
                            //   hint: Text('data'),
                            // ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                focusColor: Colors.white,
                                // style: TextStyle(fontSize: 16, color: Colors.white),
                                // borderRadius: 5,
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
                              'Institute',
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
                            // child: DropdownButton<String>(
                            //   value: dropdownValue,
                            //   onChanged: (String? newValue) {
                            //     setState(() {
                            //       dropdownValue = newValue!;
                            //     });
                            //   },
                            //   items: <String>[
                            //     'One',
                            //     'Two',
                            //     'Three'
                            //   ].map<DropdownMenuItem<String>>((String value) {
                            //     return DropdownMenuItem<String>(
                            //       value: value,
                            //       child: Text(value),
                            //     );
                            //   }).toList(),
                            //   hint: Text('data'),
                            // ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                focusColor: Colors.white,
                                // style: TextStyle(fontSize: 16, color: Colors.white),
                                // borderRadius: 5,
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
                            'Course',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins'),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Course',
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
                            // child: DropdownButton<String>(
                            //   value: dropdownValue,
                            //   onChanged: (String? newValue) {
                            //     setState(() {
                            //       dropdownValue = newValue!;
                            //     });
                            //   },
                            //   items: <String>[
                            //     'One',
                            //     'Two',
                            //     'Three'
                            //   ].map<DropdownMenuItem<String>>((String value) {
                            //     return DropdownMenuItem<String>(
                            //       value: value,
                            //       child: Text(value),
                            //     );
                            //   }).toList(),
                            //   hint: Text('data'),
                            // ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                focusColor: Colors.white,
                                // style: TextStyle(fontSize: 16, color: Colors.white),
                                // borderRadius: 5,
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
                              'Course Type',
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
                            // child: DropdownButton<String>(
                            //   value: dropdownValue,
                            //   onChanged: (String? newValue) {
                            //     setState(() {
                            //       dropdownValue = newValue!;
                            //     });
                            //   },
                            //   items: <String>[
                            //     'One',
                            //     'Two',
                            //     'Three'
                            //   ].map<DropdownMenuItem<String>>((String value) {
                            //     return DropdownMenuItem<String>(
                            //       value: value,
                            //       child: Text(value),
                            //     );
                            //   }).toList(),
                            //   hint: Text('data'),
                            // ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                focusColor: Colors.white,
                                // style: TextStyle(fontSize: 16, color: Colors.white),
                                // borderRadius: 5,
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
                              'Degree Type',
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
                            // child: DropdownButton<String>(
                            //   value: dropdownValue,
                            //   onChanged: (String? newValue) {
                            //     setState(() {
                            //       dropdownValue = newValue!;
                            //     });
                            //   },
                            //   items: <String>[
                            //     'One',
                            //     'Two',
                            //     'Three'
                            //   ].map<DropdownMenuItem<String>>((String value) {
                            //     return DropdownMenuItem<String>(
                            //       value: value,
                            //       child: Text(value),
                            //     );
                            //   }).toList(),
                            //   hint: Text('data'),
                            // ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                focusColor: Colors.white,
                                // style: TextStyle(fontSize: 16, color: Colors.white),
                                // borderRadius: 5,
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
