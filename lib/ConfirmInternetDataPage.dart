import 'package:flutter/material.dart';
import 'package:money_transfer/CommonButton.dart';

class ConfirmInternetDataPage extends StatefulWidget {
  const ConfirmInternetDataPage({Key? key}) : super(key: key);

  @override
  State<ConfirmInternetDataPage> createState() =>
      _ConfirmInternetDataPageState();
}

class _ConfirmInternetDataPageState extends State<ConfirmInternetDataPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Row(
                children: [
                  Image.asset("assets/images/Back.png"),
                  Spacer(),
                  Text(
                    "Internet Data",
                    style: TextStyle(
                      color: Color(0xff011A51),
                      fontSize: 22,
                      fontFamily: 'Title',
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              width: width,
              height: height * 0.22,
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
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
                          onPressed: () {},
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
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Choose Package",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'SubTitle',
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Center(
              child: Text(
                "Confirm Internet Data",
                style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'SubTitle',
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Center(
              child: Container(
                width: width * 0.9,
                height: height * 0.11,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black26, width: 1.5),
                    borderRadius: BorderRadius.circular(14)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Package",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black26,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SubTitle',
                        ),
                      ),
                      SizedBox(
                        height: height * 0.005,
                      ),
                      Text(
                        "Freedom Internet 30 Day",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SubTitle',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Center(
              child: Container(
                width: width * 0.9,
                height: height * 0.11,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black26, width: 1.5),
                    borderRadius: BorderRadius.circular(14)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lori Bryson",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black26,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SubTitle',
                        ),
                      ),
                      SizedBox(
                        height: height * 0.005,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "+62 852-432-450-00",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SubTitle',
                            ),
                          ),
                          Image.asset("assets/images/Profile (1).png")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 18),
                width: width * 0.9,
                height: height * 0.11,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.circular(14)),
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 13),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Amount",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'SubTitle',
                                  color: Colors.black38),
                            ),
                            Text(
                              "\$200.00",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'SubTitle',
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Fee",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'SubTitle',
                                  color: Colors.black38),
                            ),
                            Text(
                              "Free",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'SubTitle',
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: CommonButton(
                text: "SEND",
                onTap: () {},
                color: Color(0xffFB847C),
              ),
            )
          ],
        ),
      ),
    );
  }
}
