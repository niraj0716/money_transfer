import 'package:flutter/material.dart';
import 'package:money_transfer/ResetPasswordPage.dart';

import 'CommonButton.dart';
import 'CommonTextFormField.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  TextEditingController Email = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SafeArea(
          child: SingleChildScrollView(
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
                  height: height * 0.04,
                ),
                Center(
                  child: Image.asset("assets/images/illustration7.png"),
                ),
                SizedBox(
                  height: height * 0.06,
                ),
                Center(
                  child: Text(
                    "Forgot Password",
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
                  height: height * 0.135,
                ),
                Form(
                  key: formkey,
                  child: CommonTextFormField(
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
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                CommonButton(
                  text: "NEXT",
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResetPasswordPage(),
                          ));
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
