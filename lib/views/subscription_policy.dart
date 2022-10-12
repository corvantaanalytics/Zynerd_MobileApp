import 'package:flutter/material.dart';
import 'package:zynerd_app/views/Signin.dart';
import 'package:zynerd_app/views/landing.dart';

class SubPolicy extends StatefulWidget {
  const SubPolicy({Key? key}) : super(key: key);

  @override
  _SubPolicyState createState() => _SubPolicyState();
}

// TabController _tabController;
// @override
// void initState(){
//   _tabController = new TabController(length: 2, vsync: )
// }
void _pushMenu() {
  // return Scaffold(
  //   appBar: AppBar(title: Text('Menu')),
  // );
}

class _SubPolicyState extends State<SubPolicy> {
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
              MaterialPageRoute(builder: (context) => const Landing()),
            );
          },
        ),
        leadingWidth: 200,
        actions: [
          OutlinedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Signin()),
              );
            },
            child: const Text('Sign In /Sign Up'),
          ),
          Icon(
            Icons.menu_sharp,
            color: Colors.blue[900],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Card(
            child: Container(
                height: 400,
                // margin: EdgeInsets.all(14.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/Landing/Rectangle.png'),
                      fit: BoxFit.fill),
                ),
                child: Column(
                  children: [
                    Text(
                      'Subscription Plans & Refund Policy',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Lora'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: Text(
                        'The terms and conditions of this agreement are between you and ZyNerd Private Limited  (“ZyNerd”, “we” or “us”). Please read these terms, along with the Privacy Policy, Terms of Use, and all other rules and policies made available or published on ZyNerd platform or mobile application (including, but not limited to, any rules or usage provisions specified on any page or on any help or other informational page on ZyNerd website or mobile application) (collectively, this "Agreement"). The versions of the above-mentioned policies and terms are available on ZyNerd website and/or mobile application for your reference and to understand how we handle your personal information. Every time you visit, browse, or register for ZyNerd and/or use your ZyNerd Subscription, you accept this Agreement.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Lora',
                            color: Colors.black45),
                      ),
                    ),
                  ],
                )),
          ),
          Card(
              child: Container(
            height: 400,
            child: Column(
              children: [
                DefaultTabController(
                  length: 3,
                  child: TabBar(
                    labelColor: Colors.orange,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(
                        child: Text(
                          'Subscription Plans and Refund Policy',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w400),
                        ),
                        height: 50,
                      ),
                      Tab(
                        child: Text(
                          'Additional terms',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w400),
                        ),
                        height: 50,
                      ),
                      Tab(
                        child: Text(
                          'Refund of Voluntary Contributions',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w400),
                        ),
                        height: 50,
                      ),
                    ],
                    // controller: _tabController,
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [Text('Subscription Plans and Refund Policy')],
                  ),
                )
              ],
            ),
          )),

          //       TabBar(
          //         labelColor: Colors.orange,
          //         unselectedLabelColor: Colors.grey,
          //         tabs: [
          //           Tab(text: 'Subscription Plans and Refund Policy'),
          //           Tab(text: 'Additional terms'),
          //           Tab(text: 'Refund of Voluntary Contributions'),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
