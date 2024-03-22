import 'package:flutter/material.dart';
import 'package:money_transfer/RegistrationPage.dart';

import 'CommonButton.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({Key? key}) : super(key: key);

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.1,
              ),
              Center(child: Image.asset("assets/images/illustration1.png")),
              SizedBox(
                height: height * 0.008,
              ),
              Center(
                child: Text(
                  "Flowa",
                  style: TextStyle(
                      fontFamily: 'Title',
                      color: Color(0xff011A51),
                      fontSize: 24,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Text(
                "Experience the",
                style: TextStyle(
                    //fontFamily: 'Title',
                    color: Color(0xff011A51),
                    fontSize: 43,
                    fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Text(
                    "easier way ",
                    style: TextStyle(
                        // fontFamily: 'Title',
                        color: Color(0xffFF897E),
                        decoration: TextDecoration.underline,
                        fontSize: 43,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "for",
                    style: TextStyle(
                        // fontFamily: 'Title',
                        color: Color(0xff011A51),
                        fontSize: 43,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Text(
                "transaction!",
                style: TextStyle(
                    // fontFamily: 'Title',
                    color: Color(0xff011A51),
                    fontSize: 45,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "Connect your money to your\nfriends & brands.",
                style: TextStyle(
                    fontFamily: 'SubTitle',
                    fontSize: 17,
                    color: Color(0xff848484),
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: height * 0.1,
              ),
              CommonButton(
                color: Color(0xffFB847C),
                text: "GET STARTED",
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegistrationPage(),
                      ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
