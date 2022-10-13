import 'package:flutter/material.dart';
import 'package:zynerd_app/views/Signin.dart';
import 'package:zynerd_app/views/landing.dart';

class SubPolicy extends StatefulWidget {
  const SubPolicy({Key? key}) : super(key: key);

  @override
  _SubPolicyState createState() => _SubPolicyState();
}

// class _SubPolicyState extends State<SubPolicy>
//     with SingleTickerProviderStateMixin {
//   TabController _tabController;
//   @override
//   void initState() {
//     _tabController = new TabController(length: 2, vsync: this);
//     super.initState();
//   }
// }

void _pushMenu() {
  // return Scaffold(
  //   appBar: AppBar(title: Text('Menu')),
  // );
}

class _SubPolicyState extends State<SubPolicy>
    with SingleTickerProviderStateMixin {
  // TabController _tabController;
  // @override
  // void initState() {
  //   _tabController = new TabController(length: 2, vsync: this);
  //   super.initState();
  // }

  @override
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                height: 600,
                // margin: EdgeInsets.all(14.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/Landing/Rectangle.png'),
                      fit: BoxFit.fill),
                ),
                child: Column(
                  children: const [
                    Text(
                      'Subscription Plans & Refund Policy',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Lora'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        'The terms and conditions of this agreement are between you and ZyNerd Private Limited  (“ZyNerd”, “we” or “us”). Please read these terms, along with the Privacy Policy, Terms of Use, and all other rules and policies made available or published on ZyNerd platform or mobile application (including, but not limited to, any rules or usage provisions specified on any page or on any help or other informational page on ZyNerd website or mobile application) (collectively, this "Agreement"). The versions of the above-mentioned policies and terms are available on ZyNerd website and/or mobile application for your reference and to understand how we handle your personal information. Every time you visit, browse, or register for ZyNerd and/or use your ZyNerd Subscription, you accept this Agreement.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            height: 1.6,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            color: Colors.black45),
                      ),
                    ),
                  ],
                ),
              ),
              DefaultTabController(
                length: 3,
                child: Container(
                  padding: EdgeInsets.all(6),
                  height: 1500,
                  child: Column(
                    children: const [
                      TabBar(
                        labelColor: Colors.orange,
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          Tab(
                            child: Text(
                              'Subscription Plans and Refund Policy',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Additional terms',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Refund of Voluntary Contributions',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                        indicatorColor: Colors.orange,
                        indicatorWeight: 5,
                        indicatorSize: TabBarIndicatorSize.tab,
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            // SubscriptionPlan(),
                            Card(
                              child: Padding(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child: Text(
                                  '''\n\n\t\t\tThe subscription plans ("Subscription Service") shall be launched by ZyNerd in due courses. This would be a personalized Subscription that offers, recommends and helps you with Counseling Guidance and Expertise (“Counseling Content” henceforth) and would be specific to each of your qualifying examinations. You can access the Counseling Content, through the ZyNerd website or ZyNerd mobile application by subscribing to any category of your choice from the available subscription plans (“Subscription”).\n
\t\t\tThe Subscription will allow you access to all the “Counseling content” for your qualifying examination during the Subscription Period. If you are under 18 years of age, or the age of majority in your location, you may use the Subscription only with involvement of a parent or guardian. We personalize content and feature them as part of the Subscriptions, including showing you recommendations on external content in the subscribed category, and other related categories that might be of interest to you. We also endeavour to continuously improve the Subscriptions and subscription plans to improve your subscription experience.\n
\t\t\tThe Subscription allows you to access the Counseling Content on the ZyNerd Platform on a subscription basis in the subscribed category for, for a limited period of time during the Subscription Period. The subscriptions may be limited to one or multiple devices as defined in the Subscription plan. You can subscribe to the category of your choice by clicking the Subscribe option, choosing the devices, and making the required payment for the subscription plan of your choice. In order to access the Counseling content, you will need to use a personal computer, a mobile device, portable media player, or any other device that meets the system and compatibility requirements (a "Compatible Device"). The Compatible Devices may change from time to time and, in some cases, whether a device is (or remains) a Compatible Device may depend on software or systems provided or maintained by the device manufacturer or other third parties. Accordingly, devices that are Compatible Devices at one time may cease to be Compatible Devices in the future. Thus, kindly make sure that the device that you use is compatible with our system/software to avail the Subscription Service. \n
\t\t\tSubject to payment of the Subscription fee, and your compliance with all terms of this Agreement, ZyNerd grants you a non-exclusive, non-transferable, non-sublicensable, limited license, during the applicable Subscription Period, to access and view the Counseling Content in accordance with the terms of this Agreement, for personal, non-commercial, private use only. We may automatically remove you access to the Counseling Content from your Compatible Device after the end of the Subscription Period or in accordance with any restriction mentioned in this Agreement.
\t\t\tYou may not (i) transfer, copy or display the Counseling Content, except as permitted in this Agreement; (ii) sell, rent, lease, distribute, or broadcast any right to the Counseling Content; (iii) remove any proprietary notices or labels on the Counseling Content; (iv) attempt to disable, bypass, modify, defeat, or otherwise circumvent any digital rights management or other content protection system used as part of the Subscription; or (v) use the Subscription or Counseling Content for any commercial or illegal purpose.''',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w300,
                                      height: 1.6),
                                ),
                              ),
                            ),
                            Card(
                              child: Text('2'),
                            ),
                            Card(
                              child: Text(
                                '''\n\n\t\t\tTill the time the subscription plans are launched, ZyNerd shall be receiving voluntary contributions from users. Voluntary contributions thus received shall be not be towards any services provided by ZyNerd, or to be provided by ZyNerd at any point in time in the future. The voluntary contributions do not fall under the refund policy, and ZyNerd shall not accept any claim whatsoever for any refund of voluntary contributions received, or for provision of services, or access to subscription plans against the voluntary contributions.''',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300,
                                    height: 1.6),
                              ),
                            ),

                            // Text('corvanta'),
                            // Text('Sanofer'),
                            // Text('Good'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Text('Footer'),
              ),
            ],
          ),
        ],
      ),

      // body: ListView(
      //   children: [
      //     Card(
      //       child: Container(
      //           height: 400,
      //           // margin: EdgeInsets.all(14.0),
      //           decoration: const BoxDecoration(
      //             image: DecorationImage(
      //                 image: AssetImage('assets/images/Landing/Rectangle.png'),
      //                 fit: BoxFit.fill),
      //           ),
      //           child: Column(
      //             children: const [
      //               Text(
      //                 'Subscription Plans & Refund Policy',
      //                 textAlign: TextAlign.center,
      //                 style: TextStyle(
      //                     fontSize: 32,
      //                     fontWeight: FontWeight.w700,
      //                     fontFamily: 'Lora'),
      //               ),
      //               Padding(
      //                 padding: EdgeInsets.only(left: 8, right: 8),
      //                 child: Text(
      //                   'The terms and conditions of this agreement are between you and ZyNerd Private Limited  (“ZyNerd”, “we” or “us”). Please read these terms, along with the Privacy Policy, Terms of Use, and all other rules and policies made available or published on ZyNerd platform or mobile application (including, but not limited to, any rules or usage provisions specified on any page or on any help or other informational page on ZyNerd website or mobile application) (collectively, this "Agreement"). The versions of the above-mentioned policies and terms are available on ZyNerd website and/or mobile application for your reference and to understand how we handle your personal information. Every time you visit, browse, or register for ZyNerd and/or use your ZyNerd Subscription, you accept this Agreement.',
      //                   textAlign: TextAlign.center,
      //                   style: TextStyle(
      //                       fontSize: 16,
      //                       fontFamily: 'Lora',
      //                       color: Colors.black45),
      //                 ),
      //               ),
      //             ],
      //           )),
      //     ),
      //     DefaultTabController(
      //       length: 3,
      //       child: Card(
      //         child: Container(
      //           height: 400,
      //           child: Column(
      //             children: const [
      //               TabBar(
      //                 labelColor: Colors.orange,
      //                 unselectedLabelColor: Colors.grey,
      //                 tabs: [
      //                   Tab(
      //                     child: Text(
      //                       'Subscription Plans and Refund Policy',
      //                       textAlign: TextAlign.center,
      //                       style: TextStyle(
      //                           fontSize: 12, fontWeight: FontWeight.w400),
      //                     ),
      //                   ),
      //                   Tab(
      //                     child: Text(
      //                       'Additional terms',
      //                       textAlign: TextAlign.center,
      //                       style: TextStyle(
      //                           fontSize: 12, fontWeight: FontWeight.w400),
      //                     ),
      //                   ),
      //                   Tab(
      //                     child: Text(
      //                       'Refund of Voluntary Contributions',
      //                       textAlign: TextAlign.center,
      //                       style: TextStyle(
      //                           fontSize: 12, fontWeight: FontWeight.w400),
      //                     ),
      //                   ),
      //                 ],
      //                 indicatorColor: Colors.orange,
      //                 indicatorWeight: 5,
      //                 indicatorSize: TabBarIndicatorSize.tab,
      //               ),
      //               Expanded(
      //                 child: TabBarView(
      //                   children: [
      //                     // SubscriptionPlan(),
      //                     Card(
      //                       child: Text(
      //                           '''The subscription plans ("Subscription Service") shall be launched by ZyNerd in due courses. This would be a personalized Subscription that offers, recommends and helps you with Counseling Guidance and Expertise (“Counseling Content” henceforth) and would be specific to each of your qualifying examinations. You can access the Counseling Content, through the ZyNerd website or ZyNerd mobile application by subscribing to any category of your choice from the available subscription plans (“Subscription”).\n
      //                              The Subscription will allow you access to all the “Counseling content” for your qualifying examination during the Subscription Period. If you are under 18 years of age, or the age of majority in your location, you may use the Subscription only with involvement of a parent or guardian. We personalize content and feature them as part of the Subscriptions, including showing you recommendations on external content in the subscribed category, and other related categories that might be of interest to you. We also endeavour to continuously improve the Subscriptions and subscription plans to improve your subscription experience.\n
      //                              The Subscription allows you to access the Counseling Content on the ZyNerd Platform on a subscription basis in the subscribed category for, for a limited period of time during the Subscription Period. The subscriptions may be limited to one or multiple devices as defined in the Subscription plan. You can subscribe to the category of your choice by clicking the Subscribe option, choosing the devices, and making the required payment for the subscription plan of your choice. In order to access the Counseling content, you will need to use a personal computer, a mobile device, portable media player, or any other device that meets the system and compatibility requirements (a "Compatible Device"). The Compatible Devices may change from time to time and, in some cases, whether a device is (or remains) a Compatible Device may depend on software or systems provided or maintained by the device manufacturer or other third parties. Accordingly, devices that are Compatible Devices at one time may cease to be Compatible Devices in the future. Thus, kindly make sure that the device that you use is compatible with our system/software to avail the Subscription Service. \n
      //                              Subject to payment of the Subscription fee, and your compliance with all terms of this Agreement, ZyNerd grants you a non-exclusive, non-transferable, non-sublicensable, limited license, during the applicable Subscription Period, to access and view the Counseling Content in accordance with the terms of this Agreement, for personal, non-commercial, private use only. We may automatically remove you access to the Counseling Content from your Compatible Device after the end of the Subscription Period or in accordance with any restriction mentioned in this Agreement.
      //                              You may not (i) transfer, copy or display the Counseling Content, except as permitted in this Agreement; (ii) sell, rent, lease, distribute, or broadcast any right to the Counseling Content; (iii) remove any proprietary notices or labels on the Counseling Content; (iv) attempt to disable, bypass, modify, defeat, or otherwise circumvent any digital rights management or other content protection system used as part of the Subscription; or (v) use the Subscription or Counseling Content for any commercial or illegal purpose.'''),
      //                     ),
      //                     // Text('corvanta'),
      //                     // Text('Sanofer'),
      //                     // Text('Good'),
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}

class SubscriptionPlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(),
    );
  }
}
