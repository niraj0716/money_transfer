import 'package:custom_otp_textfield/custom_otp_textfield.dart';
import 'package:flutter/material.dart';
import 'package:money_transfer/CommonButton.dart';
import 'package:money_transfer/WelcomePage.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.1,
              ),
              Center(
                child: Text(
                  "Enter Code",
                  style: TextStyle(
                      fontSize: 23,
                      fontFamily: 'Titl'
                          'e',
                      color: Color(0xff011A51)),
                ),
              ),
              SizedBox(
                height: height * 0.008,
              ),
              Center(
                child: Text(
                  "Enter the 6-digit verification sent to \n+62852000342",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SubTitle',
                      color: Color(0xff727E96)),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Image.asset("assets/images/illustration3.png"),
              SizedBox(
                height: height * 0.1,
              ),
              CustomOTPTextField(
                deviceWidth: MediaQuery.of(context).size.width,
                textEditingController: textEditingController,
                boxSize: width * 0.17,
                inputBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.black38, width: 1),
                ),
                cursorColor: Colors.blue,
                otpLength: 4,
                textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                spaceBetweenTextFields: width * 0.04,
                cursorHeight: 30,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Resend code in ",
                    style: TextStyle(
                        color: Colors.black45,
                        fontFamily: 'SubTitle',
                        fontSize: 13),
                  ),
                  Text(
                    "43",
                    style: TextStyle(
                        color: Color(0xffFB847C),
                        fontFamily: 'SubTitle',
                        fontSize: 13),
                  ),
                  Text(
                    "second",
                    style: TextStyle(
                        color: Colors.black45,
                        fontFamily: 'SubTitle',
                        fontSize: 13),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.12,
              ),
              CommonButton(
                text: "CONTINUE",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WelcomePage(),
                      ));
                },
                color: Color(0xffFB847C),
              )
            ],
          ),
        ),
      ),
    );
  }
}
