import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:money_transfer/ConfirmInternetDataPage.dart';

class InternetDataPage extends StatefulWidget {
  const InternetDataPage({Key? key}) : super(key: key);

  @override
  State<InternetDataPage> createState() => _InternetDataPageState();
}

class _InternetDataPageState extends State<InternetDataPage> {
  int select = -1;
  List image = [
    "assets/images/internet/Freedom internet.png",
    "assets/images/internet/Freedom apps.png",
    "assets/images/internet/Daily kuota.png"
  ];
  List title = [
    "Freedom Internet\n30 Day",
    "Freedom Apps Ytube,\nNetflix, IG , More ...",
    "Daily kuota freedom\n2GB/Day"
  ];
  List subtitle = [
    "New 42 GB + Call 2hours + Streaming 5 Gb Active 30 Day",
    "Fun 42 GB + Call 2hours + Streaming 5 Gb Active 30 Day",
    "Total 42 GB + Call 2hours + Streaming 5 Gb Active 30 Day"
  ];
  List price = [10, 20, 30];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: width,
                height: height * 0.32,
                color: Color(0xff011A51),
                child: SafeArea(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "Internet Data",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SubTitle',
                          fontSize: 22),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -30,
                left: 0,
                right: 0,
                child: Container(
                  width: width,
                  height: height * 0.22,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            Image.asset("assets/images/home/Profile image.png"),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              "Lori Brysons",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'SubTitle',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
                            ),
                            Spacer(),
                            MaterialButton(
                              onPressed: () {
                                if (select != -1) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ConfirmInternetDataPage(),
                                      ));
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content:
                                              Text("Please Select Package")));
                                }
                              },
                              height: 30,
                              color: Color(0xffFF897E),
                              child: Text(
                                "Buy Package",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'SubTitle',
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          "Data",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'SubTitle',
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                        ),
                        Text(
                          "Monthly",
                          style: TextStyle(
                              color: Colors.black45,
                              fontFamily: 'SubTitle',
                              fontWeight: FontWeight.w500,
                              fontSize: 11),
                        ),
                        SizedBox(
                          height: height * 0.005,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "42 GB",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'SubTitle',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
                            ),
                            Text(
                              "12 GB",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'SubTitle',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: width * 0.1),
                          child: Divider(
                            thickness: 3,
                            color: Color(0xff011A51),
                          ),
                        ),
                        Text(
                          "March 21 - April 21,2022",
                          style: TextStyle(
                              color: Colors.black45,
                              fontFamily: 'SubTitle',
                              fontWeight: FontWeight.w500,
                              fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: height * 0.06,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Choose Package",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'SubTitle',
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 3,
            padding: EdgeInsets.only(top: 10),
            itemBuilder: (context, index) {
              return InkResponse(
                onTap: () {
                  setState(() {
                    select = index;
                  });
                },
                child: Container(
                  width: width,
                  height: height * 0.17,
                  margin: EdgeInsets.only(bottom: 20, left: 15, right: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          width: select == index ? 1.5 : 0.8,
                          color: select == index
                              ? Color(0xffFB847C)
                              : Colors.black45)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Image.asset("${image[index]}"),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Text(
                              "${title[index]}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'SubTitle',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
                            ),
                            Spacer(),
                            Text(
                              "\$${price[index].toString()}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'SubTitle',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      DottedDashedLine(
                        height: 0,
                        width: width,
                        axis: Axis.horizontal,
                        dashColor: Colors.black26,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "${subtitle[index]}",
                          style: TextStyle(
                              color: Colors.black45,
                              fontFamily: 'SubTitle',
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
