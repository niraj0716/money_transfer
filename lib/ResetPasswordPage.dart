import 'package:flutter/material.dart';
import 'package:money_transfer/LoginPage.dart';

import 'CommonTextFormField.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  TextEditingController NewPassword = TextEditingController();
  TextEditingController ResetPassword = TextEditingController();
  bool passshow = true;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: InkResponse(
                          onTap: () => Navigator.pop(context),
                          child: Image.asset("assets/images/Back.png"))),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Center(
                    child: Image.asset("assets/images/illustration8.png"),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Center(
                    child: Text(
                      "Reset Password",
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
                    lable: "New Password",
                    controller: NewPassword,
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
                    height: height * 0.03,
                  ),
                  CommonTextFormField(
                    lable: "Reset Password",
                    controller: ResetPassword,
                    validator: (value) {
                      bool validPass = RegExp(
                              "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}")
                          .hasMatch(value!);

                      if (validPass) {
                        return null;
                      } else {
                        return "Enter Strong Password";
                      }
                    },
                    obscureText: true,
                  ),
                  SizedBox(
                    height: height * 0.1,
                  ),
                  MaterialButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        if (NewPassword.text == ResetPassword.text) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Enter Both Same")));
                        }
                      }
                    },
                    color: Color(0xffFB847C),
                    minWidth: width * 0.86,
                    height: height * 0.07,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.transparent)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.circle_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Text(
                          "SUBMITING",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'SubTitle',
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
