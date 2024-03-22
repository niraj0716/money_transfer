import 'package:flutter/material.dart';
import 'package:money_transfer/ScancardPage.dart';
import 'package:money_transfer/Wallet/WalletaccountPage.dart';

class WalletcardsPage extends StatefulWidget {
  const WalletcardsPage({Key? key}) : super(key: key);

  @override
  State<WalletcardsPage> createState() => _WalletcardsPageState();
}

class _WalletcardsPageState extends State<WalletcardsPage> {
  int select = 1;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(children: [
          SafeArea(
            child: Row(
              children: [
                Image.asset("assets/images/Back.png"),
                Spacer(),
                Text(
                  "Internet Data",
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
          Image.asset("assets/images/Wallet/Group 259.png"),
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/images/Wallet/exp inc card.png",
                    width: 160,
                  ),
                  Image.asset(
                    "assets/images/Wallet/Income.png",
                    width: 160,
                  )
                ],
              ),
              Image.asset(
                "assets/images/Wallet/balance is.png",
                width: 171,
              )
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Analytics",
              style: TextStyle(
                color: Color(0xff011A51),
                fontSize: 18,
                fontFamily: 'Title',
              ),
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
                            if (index == 0) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => WalletaccountPage(),
                                  ));
                            }
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
                              child:
                                  Text(index == 0 ? "Bank accounts" : "Cards",
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
            height: height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScancardPage(),
                    ));
              },
              height: height * 0.065,
              minWidth: width,
              color: Color(0xff011A51),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/Scan.png"),
                  SizedBox(
                    width: width * 0.07,
                  ),
                  Text(
                    "Scan Card",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SubTitle',
                        fontSize: 15),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
