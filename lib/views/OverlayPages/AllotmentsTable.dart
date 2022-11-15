import 'package:flutter/material.dart';

class AllotmentPopup extends StatefulWidget {
  const AllotmentPopup({Key? key}) : super(key: key);

  @override
  _AllotmentPopupState createState() => _AllotmentPopupState();
}

class _AllotmentPopupState extends State<AllotmentPopup> {
  String _selectedCounsel = 'Counselling Ranking';
  double _startValue = 20.0;
  double _endValue = 90.0;
  String dropdownValue = 'Select';
  var tableRow = new TableRow();
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
                //   MaterialPageRoute(builder: (context) => const Closingranks()),
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
              child: IconButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const EditProfile()),
                  // );
                },
                icon: Image.asset(
                  'assets/images/Dashboard/DefaultProfile.png',
                  height: 25,
                  width: 400,
                  fit: BoxFit.fill,
                ),
              ),
            )
            // Container(
            //   width: 30,
            //   child: Image.asset('assets/images/Dashboard/DefaultProfile.png'),
            // ),
          ],
          backgroundColor: Colors.white,
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black, size: 31),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Flexible(
                  child: Text(
                    'Allotments',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 31,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins'),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              color: Color(0xFFFFFFFF),
              width: double.infinity,
              child: SingleChildScrollView(
                child: PaginatedDataTable(
                  onRowsPerPageChanged: (perPage) {},
                  rowsPerPage: 10,
                  columns: <DataColumn>[
                    DataColumn(
                      label: Text(
                        'Round',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0xFF9DA3A6),
                        ),
                      ),
                      onSort: (columnIndex, ascending) {
                        print("$columnIndex $ascending");
                      },
                    ),
                    DataColumn(
                      label: Text(
                        'Neet PG Rank',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0xFF9DA3A6),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Counselling Rank',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0xFF9DA3A6),
                        ),
                      ),
                    ),
                    // DataColumn(
                    //   label: Text(
                    //     'Quota',
                    //     style: TextStyle(
                    //       fontSize: 13,
                    //       fontWeight: FontWeight.w400,
                    //       fontFamily: 'Poppins',
                    //       color: Color(0xFF9DA3A6),
                    //     ),
                    //   ),
                    // ),
                  ],
                  source: tableRow,
                ),
              ),
            ),
          ],
        ));
  }
}

class TableRow extends DataTableSource {
  @override
  DataRow? getRow(int index) {
    return DataRow.byIndex(index: index, cells: [
      DataCell(Text("1 $index")),
      DataCell(Text("803 $index")),
      DataCell(Text("803 $index")),
    ]);
  }

  @override
  bool get isRowCountApproximate => true;

  @override
  int get rowCount => 50;

  @override
  int get selectedRowCount => 0;
}
