  import 'package:flutter/material.dart';

  import 'TransactionSuccesPage.dart';

  class TransferPage extends StatefulWidget {
    const TransferPage({Key? key}) : super(key: key);

    @override
    State<TransferPage> createState() => _TransferPageState();
  }

  class _TransferPageState extends State<TransferPage> {
    int select = 1;
    int select_person = 0;
    List<double> moneyList = [100, 150, 200, 250];
    List image = [
      "assets/images/G26Mask group.png",
      "assets/images/G25Mask group (1).png",
      "assets/images/G24Mask group (2).png",
      "assets/images/G23Mask group (3).png",
      "assets/images/G22Mask group (4).png",
    ];
    List Name = ["Bhavik", "Hastin", "Jenil", "Yash", "Priyansh"];
    double money = 150;
    @override
    Widget build(BuildContext context) {
      final height = MediaQuery.of(context).size.height;
      final width = MediaQuery.of(context).size.width;
      return Scaffold(
          backgroundColor: Color(0xffE5E5E5),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: InkResponse(
                          onTap: () => Navigator.pop(context),
                          child: Image.asset("assets/images/Back.png"))),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new,
                        color: Color(0xff011A51),
                        size: 20,
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        "Send Money",
                        style: TextStyle(
                          color: Color(0xff011A51),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SubTitle',
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: width * 0.12,
                        height: height * 0.06,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                              image: AssetImage(
                                "assets/images/Image.png",
                              ),
                              // fit: BoxFit.fill,
                            ),
                            color: Colors.white,
                            border: Border.all(color: Colors.white)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "Choose Account",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        fontFamily: 'SubTitle',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.06,
                  ),
                  Center(
                    child: Image.asset(
                      "assets/images/card.png",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Center(
                    child: Text(
                      "How much you would like to send?",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SubTitle',
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkResponse(
                        onTap: () {
                          setState(() {
                            if (money > 1) {
                              money--;
                              for (int i = 0; i < 4; i++) {
                                if (money == moneyList[i]) {
                                  select = i;
                                }
                              }
                            }
                          });
                        },
                        child: Container(
                          width: width * 0.1,
                          height: height * 0.045,
                          decoration: BoxDecoration(
                              color: Color(0xffEAEBEB),
                              borderRadius: BorderRadius.circular(6)),
                          child: Icon(Icons.remove),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.07,
                      ),
                      Text(
                        "$money",
                        style: TextStyle(
                            color: Color(0xff011A51),
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            fontFamily: 'SubTitle'),
                      ),
                      SizedBox(
                        width: width * 0.07,
                      ),
                      InkResponse(
                        onTap: () {
                          setState(() {
                            money++;
                            for (int i = 0; i < 4; i++) {
                              if (money == moneyList[i]) {
                                select = i;
                              }
                            }
                          });
                        },
                        child: Container(
                          width: width * 0.1,
                          height: height * 0.045,
                          decoration: BoxDecoration(
                              color: Color(0xffEAEBEB),
                              borderRadius: BorderRadius.circular(6)),
                          child: Icon(Icons.add),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    children: List.generate(
                        4,
                        (index) => InkResponse(
                              onTap: () {
                                setState(() {
                                  select = index;
                                  money = moneyList[index];
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 13.5),
                                decoration: BoxDecoration(
                                    color: select == index
                                        ? Color(0xffF8C345)
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 17, vertical: 3),
                                  child: Text(
                                    "s${moneyList[index].toStringAsFixed(0)}",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'SubTitle'),
                                  ),
                                ),
                              ),
                            )),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Text(
                    "Choose Recepient",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SubTitle',
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    children: List.generate(
                        5,
                        (index) => Padding(
                              padding: EdgeInsets.only(left: width * 0.035),
                              child: Column(
                                children: [
                                  InkResponse(
                                    onTap: () {
                                      setState(() {
                                        select_person = index;
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          border: Border.all(
                                              color: select_person == index
                                                  ? Color(0xff011A51)
                                                  : Colors.transparent,
                                              width: 2),
                                          image: DecorationImage(
                                              image:
                                                  AssetImage("${image[index]}"))),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.005,
                                  ),
                                  Text(
                                    "${Name[index]}",
                                    style: TextStyle(
                                        color: index == select_person
                                            ? Color(0xff101828)
                                            : Colors.transparent,
                                        fontFamily: 'SubTitle',
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            )),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        minWidth: width * 0.42,
                        height: height * 0.06,
                        color: Color(0xffFB9089),
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.transparent)),
                        child: Text(
                          "TAKE ME BACK",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'SubTitle',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TransactionSuccesPage(
                                  money: money,
                                  name: Name[select_person],
                                ),
                              ));
                        },
                        minWidth: width * 0.42,
                        height: height * 0.06,
                        color: Color(0xff011A51),
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.transparent)),
                        child: Text(
                          "SEND MONEY",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'SubTitle',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ));
    }
  }
