import 'package:flutter/material.dart';
import 'package:money_transfer/TransferPage.dart';

class BalenceProfilePage extends StatefulWidget {
  const BalenceProfilePage({Key? key}) : super(key: key);

  @override
  State<BalenceProfilePage> createState() => _BalenceProfilePageState();
}

class _BalenceProfilePageState extends State<BalenceProfilePage> {
  List icon = [
    "assets/images/i1.png",
    "assets/images/i2.png",
    "assets/images/i3.png",
    "assets/images/i4.png",
  ];
  List image = [
    "assets/images/paypall.png",
    "assets/images/APPLE.png",
    "assets/images/macd.png",
    "assets/images/amazon.png",
  ];
  List title = [
    "Paypall",
    "Apple",
    "Mcdonalds",
    "Amazon",
  ];
  List date = [
    "24 Mar 2022",
    "25 Mar 2022",
    "26 Mar 2022",
    "28 Mar 2022",
  ];

  List name = ["Transfer", "Withdraw", "Top up", "Deposit"];
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
              // UserAccountsDrawerHeader(
              //   currentAccountPicture: CircleAvatar(),
              //   accountName: Text("Bhavik"),
              //   accountEmail: Text("bhavik12@gmail.com"),
              // ),
              Container(
                height: height * 0.3,
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
            ],
          ),
        ),
        backgroundColor: Color(0xff011A51),
        body: Builder(
          builder: (context) {
            return SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child:
                                Image.asset("assets/images/notification.png")),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkResponse(
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
                                    border: Border.all(color: Colors.white)),
                              ),
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
                            Spacer(),
                            Container(
                              width: width * 0.18,
                              height: height * 0.035,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: width * 0.015,
                                  ),
                                  Image.asset("assets/images/Logo"
                                      ".png"),
                                  Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Colors.black54,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.07,
                        ),
                        Text(
                          "Available Balance",
                          style: TextStyle(
                              fontFamily: "SubTitle",
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        Text(
                          "\$17,000",
                          style: TextStyle(
                              fontFamily: "SubTitle",
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: height * 0.025,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    width: width,
                    decoration: BoxDecoration(
                        color: Color(0xffEFF2F4),
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Text(
                            "Operations",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'SubTitle',
                                fontWeight: FontWeight.w400,
                                fontSize: 17),
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Row(
                            children: List.generate(
                                4,
                                (index) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 9.5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          InkResponse(
                                            onTap: () {
                                              if (index == 0) {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          TransferPage(),
                                                    ));
                                              }
                                            },
                                            child: Container(
                                              width: width * 0.16,
                                              height: height * 0.062,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
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
                                    )),
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Text(
                            "Recent Transactions",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'SubTitle'),
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: 4,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 0),
                                  leading: CircleAvatar(
                                    radius: 26,
                                    backgroundColor: Colors.grey,
                                    backgroundImage:
                                        AssetImage("${image[index]}"),
                                  ),
                                  title: Text(
                                    "${title[index]}",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontFamily: 'SubTitle',
                                        fontWeight: FontWeight.w500),
                                  ),
                                  subtitle: Text(
                                    "+0.54915 BTC",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontFamily: 'SubTitle',
                                        fontWeight: FontWeight.w500),
                                  ),
                                  trailing: Text(
                                    "${date[index]}",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'SubTitle',
                                        fontSize: 12),
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ))
                ],
              ),
            );
          },
        ));
  }
}
