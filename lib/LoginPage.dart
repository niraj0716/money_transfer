import 'package:flutter/material.dart';
import 'package:money_transfer/CommonTextFormField.dart';
import 'package:money_transfer/ForgotPasswordPage.dart';
import 'package:money_transfer/NevBarPage.dart';

import 'CommonButton.dart';
import 'RegistrationPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController Password = TextEditingController();
  TextEditingController Name = TextEditingController();
  bool passshow = true;
  String namecheck = "Bhavik";
  String passwordcheck = "123@123";

  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.1,
                ),
                Center(child: Image.asset("assets/images/illustration6.png")),
                SizedBox(
                  height: height * 0.03,
                ),
                Center(
                  child: Text(
                    "Login",
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
                    "Set a name for your profile, here's\nthe password",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'SubTitle',
                        color: Color(0xff727E96)),
                  ),
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                CommonTextFormField(
                  lable: "Name",
                  controller: Name,
                  validator: (value) {
                    bool validname = value.toString().isEmpty;
                    if (validname) {
                      return 'Please enter Name';
                    } else {
                      return null;
                    }
                  },
                  obscureText: false,
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                CommonTextFormField(
                  lable: "Password",
                  controller: Password,
                  suffixIcon: InkResponse(
                    onTap: () {
                      setState(() {
                        passshow = !passshow;
                      });
                    },
                    child: Icon(
                      passshow
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: Colors.black,
                    ),
                  ),
                  obscureText: passshow,
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPasswordPage(),
                        )),
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12,
                          fontFamily: 'SubTitle'),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.07,
                ),
                CommonButton(
                  text: "LOGIN",
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      if (Name.text == namecheck) {
                        if (Password.text == passwordcheck) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NevBarPage(),
                              ));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Invalid Password")));
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Invalid Name")));
                      }
                    }
                  },
                  color: Color(0xffFB847C),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SubTitle'),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegistrationPage(),
                            ));
                      },
                      child: Text(
                        "Signup",
                        style: TextStyle(
                            color: Color(0xffFB847C),
                            fontSize: 13,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'SubTitle'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
