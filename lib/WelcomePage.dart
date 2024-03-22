import 'package:flutter/material.dart';
import 'package:money_transfer/CommonTextFormField.dart';
import 'package:money_transfer/LoginPage.dart';

import 'CommonButton.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();
  TextEditingController Name = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool passshow = true;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.1,
                ),
                Center(
                  child: Text(
                    "Welcome",
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
                  height: height * 0.05,
                ),
                Image.asset("assets/images/illustration4.png"),
                SizedBox(
                  height: height * 0.1,
                ),
                CommonTextFormField(
                  lable: "Email",
                  controller: Email,
                  validator: (value) {
                    bool validEmail = RegExp("^[a-zA-Z0-9.!#"
                            "\$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,"
                            "253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*\$")
                        .hasMatch(value!);

                    if (validEmail) {
                      return null;
                    } else {
                      return "Invalid email";
                    }
                  },
                  obscureText: false,
                ),
                SizedBox(
                  height: height * 0.02,
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
                  height: height * 0.02,
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
                          : Icons.visibility_off,
                      color: Colors.black,
                    ),
                  ),
                  validator: (value) {
                    bool validPass = RegExp(
                            "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}")
                        .hasMatch(value!);

                    if (validPass) {
                      return null;
                    } else {
                      return "Invalid password";
                    }
                  },
                  obscureText: passshow,
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                CommonButton(
                  text: "CONTINUE",
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      showDialog(
                        barrierColor: Colors.black87,
                        context: context,
                        builder: (context) {
                          return Dialog(
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            alignment: Alignment.center,
                            insetPadding: EdgeInsets.zero,
                            child: Container(
                              height: height * 0.65,
                              width: width * 0.9,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: height * 0.05,
                                  ),
                                  Center(
                                    child: Text(
                                      "Congratulation, Now\nyou are registered!",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'Titl'
                                              'e',
                                          color: Color(0xff011A51)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Center(
                                    child: Text(
                                      "Start using the app, Pay attention\nto the "
                                      "rules in the application",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: 'SubTitle',
                                          color: Color(0xff727E96)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.03,
                                  ),
                                  Image.asset(
                                      "assets/images/illustration5.png"),
                                  SizedBox(
                                    height: height * 0.1,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: CommonButton(
                                      text: "START",
                                      onTap: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => LoginPage(),
                                            ));
                                      },
                                      color: Color(0xffFB847C),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    }
                  },
                  color: Color(0xffFB847C),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
