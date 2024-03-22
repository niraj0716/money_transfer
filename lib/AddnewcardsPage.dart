import 'package:flutter/material.dart';
import 'package:money_transfer/CommonButton.dart';

class AddnewcardsPage extends StatefulWidget {
  const AddnewcardsPage({Key? key}) : super(key: key);

  @override
  State<AddnewcardsPage> createState() => _AddnewcardsPageState();
}

class _AddnewcardsPageState extends State<AddnewcardsPage> {
  bool select = false;
  TextEditingController number = TextEditingController();
  TextEditingController expire = TextEditingController();
  TextEditingController cvv = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
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
                        "Add new cards",
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
                  height: height * 0.07,
                ),
                Image.asset("assets/images/addcard.png"),
                SizedBox(
                  height: height * 0.07,
                ),
                Textf(
                  lable: "Card Number",
                  controller: number,
                  validator: (value) {
                    if (number.text.length == 0) {
                      return "Please Enter Card Number";
                    } else if (number.text.length != 15) {
                      return "Enter Valid Card Number";
                    }
                  },
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: width * 0.4,
                        child: Textf(
                          controller: expire,
                          lable: "Expire Date",
                          validator: (value) {
                            if (expire.text.length == 0) {
                              return "Please Enter Expire Date";
                            }
                          },
                        )),
                    SizedBox(
                        width: width * 0.4,
                        child: Textf(
                          controller: cvv,
                          lable: "CVC/CVV",
                          validator: (value) {
                            if (cvv.text.length == 0) {
                              return "Please Enter cvv number";
                            } else if (cvv.text.length != 3) {
                              return "Enter valid cvv Number";
                            }
                          },
                        )),
                  ],
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Textf(
                  controller: name,
                  lable: "Cardholder Name",
                  validator: (value) {
                    if (expire.text.length == 0) {
                      return "Please Enter Cardholder Name";
                    }
                  },
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Textf(
                  controller: address,
                  lable: "Adress",
                  validator: (value) {
                    if (expire.text.length == 0) {
                      return "Please Enter Adress";
                    }
                  },
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            select = !select;
                          });
                        },
                        icon: select == true
                            ? Icon(
                                Icons.circle_outlined,
                                color: Colors.grey,
                              )
                            : Icon(
                                Icons.check_circle,
                                color: Color(0xffFB847C),
                              ),
                      ),
                      Text(
                        "Save card",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'SubTitle',
                            fontWeight: FontWeight.w700,
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                  child: CommonButton(
                    text: "Add Card",
                    onTap: () {
                      if (formKey.currentState!.validate()) {}
                    },
                    color: Color(0xffFB847C),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Textf extends StatefulWidget {
  const Textf({Key? key, this.lable, this.validator, this.controller})
      : super(key: key);
  final lable;
  final validator;
  final controller;
  @override
  State<Textf> createState() => _TextfState();
}

class _TextfState extends State<Textf> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      style: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontFamily: 'SubTitle',
          fontWeight: FontWeight.w500),
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.black26)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.black26)),
          labelText: widget.lable,
          labelStyle: TextStyle(color: Colors.black)),
    );
  }
}
