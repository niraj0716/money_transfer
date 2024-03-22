import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:money_transfer/CommonButton.dart';
import 'package:money_transfer/CommonTextFormField.dart';
import 'package:money_transfer/OtpPage.dart';
import 'package:money_transfer/WelcomePage.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController phonenumber = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.1,
              ),
              Center(
                child: Text(
                  "Registration",
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
                  "Enter your mobile phone number, we will send\nyou OTP to verify"
                  " later.",
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
              Center(
                child: Image.asset("assets/images/illustration2.png"),
              ),
              SizedBox(
                height: height * 0.1,
              ),
              SizedBox(
                  width: width * 0.85,
                  child: CommonTextFormField(
                    prefixIcon: CountryCodePicker(),
                    validator: (value) {
                      if (value.toString().length == 10) {
                        return null;
                      } else {
                        return 'Enter Valid Mobile Number';
                      }
                    },
                    controller: phonenumber,
                    lable: 'Number Phone',
                    obscureText: false,
                  )),
              SizedBox(
                height: height * 0.08,
              ),
              CommonButton(
                  text: "SEND VIA SMS",
                  color: Color(0xffFB847C),
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OtpPage(),
                          ));
                    }
                  }),
              SizedBox(
                height: height * 0.03,
              ),
              CommonButton(
                  text: "SEND VIA WHATSAPP",
                  color: Color(0xff011A51),
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OtpPage(),
                          ));
                    }
                  }),
              SizedBox(
                height: height * 0.08,
              ),
              Text(
                "By creating and/or using an account, you",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'SubTitle',
                    fontWeight: FontWeight.w500,
                    fontSize: 11),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "agree to our ",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SubTitle',
                        fontWeight: FontWeight.w500,
                        fontSize: 11),
                  ),
                  Text(
                    "Terms & Conditions.",
                    style: TextStyle(
                        color: Color(0xffFB847C),
                        fontFamily: 'SubTitle',
                        fontWeight: FontWeight.w500,
                        fontSize: 11),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
