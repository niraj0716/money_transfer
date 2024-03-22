import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../AddnewcardsPage.dart';
import '../CommonButton.dart';

class WalletaccountPage extends StatefulWidget {
  const WalletaccountPage({Key? key}) : super(key: key);

  @override
  State<WalletaccountPage> createState() => _WalletaccountPageState();
}

class _WalletaccountPageState extends State<WalletaccountPage> {
  TextEditingController number = TextEditingController();
  TextEditingController expire = TextEditingController();
  TextEditingController cvv = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();
  int select = 1;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
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
                    "Wallet",
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
              height: height * 0.03,
            ),
            Container(
              width: width,
              height: height * 0.07,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: List.generate(
                      2,
                      (index) => InkResponse(
                            onTap: () {
                              setState(() {
                                select = index;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 20),
                              width: width * 0.387,
                              height: height * 0.055,
                              decoration: BoxDecoration(
                                  color: select == index
                                      ? Color(0xffFF897E)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(index == 0 ? "Cards" : "Account",
                                    style: TextStyle(
                                      fontFamily: 'SubTitle',
                                      fontWeight: FontWeight.w500,
                                      color: select == index
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 15,
                                    )),
                              ),
                            ),
                          )),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            CarouselSlider(
                items: [
                  Container(
                    width: 231,
                    height: 120,
                    decoration: BoxDecoration(
                        color: Color(0xff50B6A9),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Image.asset("assets/images/card5.png"),
                  Container(
                    width: 231,
                    height: 120,
                    decoration: BoxDecoration(
                        color: Color(0xff011A51),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Image.asset("assets/images/card5.png"),
                ],
                options: CarouselOptions(
                  height: 137,
                  aspectRatio: 3,
                  clipBehavior: Clip.none,
                  viewportFraction: 0.7,
                  initialPage: 0,
                  enableInfiniteScroll: false,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  onPageChanged: (index, reason) {},
                  scrollDirection: Axis.horizontal,
                )),
            SizedBox(
              height: height * 0.05,
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
          ],
        ),
      ),
    );
  }
}
