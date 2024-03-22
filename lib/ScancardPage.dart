import 'package:flutter/material.dart';
import 'package:money_transfer/AddnewcardsPage.dart';
import 'package:money_transfer/CommonButton.dart';

class ScancardPage extends StatefulWidget {
  const ScancardPage({Key? key}) : super(key: key);

  @override
  State<ScancardPage> createState() => _ScancardPageState();
}

class _ScancardPageState extends State<ScancardPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SafeArea(
              child: Row(
                children: [
                  InkResponse(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset("assets/images/Back.png")),
                  Spacer(),
                  Text(
                    "Scan your card",
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
              height: height * 0.1,
            ),
            Text(
              "Card Number",
              style: TextStyle(
                  color: Colors.black26,
                  fontFamily: 'SubTitle',
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              "0045 4768 243 0098",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'SubTitle',
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Image.asset("assets/images/scancard.png"),
            SizedBox(
              height: height * 0.15,
            ),
            Image.asset("assets/images/Icon scan.png"),
            SizedBox(
              height: height * 0.005,
            ),
            Text(
              "Or",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'SubTitle',
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: height * 0.005,
            ),
            CommonButton(
              text: "MANUAL",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddnewcardsPage(),
                    ));
              },
              color: Color(0xffFB847C),
            )
          ],
        ),
      ),
    );
  }
}
