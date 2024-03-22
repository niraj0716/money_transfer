import 'package:flutter/material.dart';
import 'package:money_transfer/Electricity/TabBarPage.dart';
import 'package:money_transfer/InternetDataPage.dart';
import 'package:money_transfer/NotificationPage.dart';
import 'package:money_transfer/TopUpPage.dart';
import 'package:money_transfer/WithdarwPage.dart';

import 'ContactlistPage.dart';
import 'TransferPage.dart';

class BalenceProfilePage2 extends StatefulWidget {
  const BalenceProfilePage2({Key? key}) : super(key: key);

  @override
  State<BalenceProfilePage2> createState() => _BalenceProfilePage2State();
}

class _BalenceProfilePage2State extends State<BalenceProfilePage2> {
  List icon = [
    "assets/images/i1.png",
    "assets/images/i2.png",
    "assets/images/i3.png",
    "assets/images/i4.png",
  ];
  List name = ["Transfer", "Withdraw", "Top up", "Deposit"];
  List image = [
    "assets/images/home/Electric (2).png",
    "assets/images/home/Merchant (2).png",
    "assets/images/home/Internet (2).png",
    "assets/images/home/Ticket (1).png",
    "assets/images/home/Mobile (1).png",
    "assets/images/home/Transfer.png",
    "assets/images/home/more (2).png"
  ];
  List servicename = [
    "Electric",
    "Merchant",
    "Internet",
    "Ticket",
    "Mobile",
    "Transfer",
    "More"
  ];
  bool onoff = false;
  List drawerlist = [
    "Invite Friends",
    "Contact List",
    "My Wallet",
    "Change Password",
    "About us"
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        width: width * 0.8,
        backgroundColor: Colors.grey,
        child: Column(
          children: [
            Container(
              height: height * 0.32,
              width: width,
              color: Color(0xff011A51),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.07,
                  ),
                  Image.asset("assets/images/profileimage.png"),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    "Rene Wells",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SubTitle',
                        fontSize: 16),
                  ),
                  Text(
                    "Roday43@gmail.com",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                        fontFamily: 'SubTitle',
                        fontSize: 11),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    width: width * 0.3,
                    height: height * 0.045,
                    decoration: BoxDecoration(
                        color: Color(0xffFF897E),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        "Verified",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SubTitle',
                            fontSize: 12),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
              color: Color(0xffEFF5FE),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Dark Mode",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'SubTitle',
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        Switch(
                          value: onoff,
                          activeColor: Color(0xff011A51),
                          onChanged: (value) {
                            setState(() {
                              onoff = !onoff;
                            });
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                          5,
                          (index) => InkResponse(
                                onTap: () {
                                  if (index == 1) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ContactlistPage(),
                                        ));
                                  }
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    bottom: 40,
                                  ),
                                  child: Text(
                                    "${drawerlist[index]}",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'SubTitle',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              )),
                    ),
                    SizedBox(
                      height: height * 0.1,
                    ),
                    InkResponse(
                      onTap: () {},
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Image.asset("assets/images/home/exit.png"),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Text(
                            "Log Out",
                            style: TextStyle(
                                color: Color(0xffFF897E),
                                fontFamily: 'SubTitle',
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: width,
                height: height * 0.4,
                color: Color(0xff011A51),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: InkResponse(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            NotificationPage(),
                                      ));
                                },
                                child: Image.asset(
                                    "assets/images/notification.png"))),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Builder(
                              builder: (context) {
                                return InkResponse(
                                  onTap: () {
                                    Scaffold.of(context).openDrawer();
                                  },
                                  child: Container(
                                    width: width * 0.15,
                                    height: height * 0.06,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            "assets/images/Image.png",
                                          ),
                                          // fit: BoxFit.fill,
                                        ),
                                        color: Colors.white,
                                        border:
                                            Border.all(color: Colors.white)),
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Welcome Back ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white70,
                                    //fontFamily: 'Title',
                                  ),
                                ),
                                Text(
                                  "Rene Wells",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    //fontFamily: 'Title',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -(height * 0.1),
                left: 10,
                right: 10,
                child: Container(
                  width: width,
                  height: height * 0.25,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 3),
                            blurRadius: 2)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.015,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Balance",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontFamily: 'SubTitle',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
                            ),
                            Text(
                              "Active",
                              style: TextStyle(
                                  color: Color(0xffFF897E),
                                  fontFamily: 'SubTitle',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          "\$7800.50",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'SubTitle'),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Row(
                          children: List.generate(
                              4,
                              (index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: GestureDetector(
                                      onTap: () {
                                        if (index == 0) {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    TransferPage(),
                                              ));
                                        } else if (index == 1) {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    WithdarwPage(),
                                              ));
                                        } else if (index == 2) {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    TopUpPage(),
                                              ));
                                        }
                                      },
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: width * 0.16,
                                            height: height * 0.062,
                                            decoration: BoxDecoration(
                                              color: Color(0xffEFF2F4),
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              shape: BoxShape.rectangle,
                                            ),
                                            child: Center(
                                              child: Image.asset(
                                                "${icon[index]}",
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: height * 0.008,
                                          ),
                                          Text(
                                            "${name[index]}",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                    ),
                                  )),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: height * 0.1,
          ),
          Container(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.02,
                ),
                Center(
                  child: Text(
                    "All Service",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SubTitle',
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: List.generate(
                      7,
                      (index) => Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                            child: InkResponse(
                              onTap: () {
                                if (index == 0) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => TabBarPage(),
                                      ));
                                } else if (index == 2) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            InternetDataPage(),
                                      ));
                                } else if (index == 5) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => TransferPage(),
                                      ));
                                }
                              },
                              child: Container(
                                  height: height * 0.06,
                                  width: width * 0.35,
                                  child: Row(
                                    children: [
                                      Image.asset("${image[index]}"),
                                      SizedBox(
                                        width: width * 0.03,
                                      ),
                                      Text("${servicename[index]}")
                                    ],
                                  )),
                            ),
                          )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
