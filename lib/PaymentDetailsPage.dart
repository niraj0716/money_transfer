import 'package:flutter/material.dart';
import 'package:money_transfer/BalenceProfilePage.dart';
import 'package:money_transfer/BalenceProfilePage2.dart';

class PaymentDetailsPage extends StatefulWidget {
  const PaymentDetailsPage({Key? key, this.name, this.money}) : super(key: key);
  final name;
  final money;
  @override
  State<PaymentDetailsPage> createState() => _PaymentDetailsPageState();
}

class _PaymentDetailsPageState extends State<PaymentDetailsPage> {
  List title = [
    "Transfer Visa",
    "Transfer Sona Bank",
    "Transfer Getek Bank",
    "Transfer Ateul Bank",
  ];
  List subtitle = [
    "**** ****  2878",
    "**** ****  2526",
    "**** ****  3048",
    "**** ****  7532",
  ];
  List image = [
    "assets/images/card1.png",
    "assets/images/card2.png",
    "assets/images/card3.png",
    "assets/images/card4.png",
  ];
  int select = 0;
  bool isselect = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.close)),
              SizedBox(
                height: height * 0.05,
              ),
              Expanded(
                  child: Container(
                width: width,
                height: 10,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Text(
                        "Payment Details",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            fontFamily: "Title"),
                      ),
                      SizedBox(
                        height: height * 0.07,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Amount",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                              fontFamily: 'SubTitle',
                            ),
                          ),
                          Text(
                            "\$${widget.money}",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'SubTitle',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Top up Type",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                              fontFamily: 'SubTitle',
                            ),
                          ),
                          Text(
                            "${widget.name}",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SubTitle',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Transaction ID",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                              fontFamily: 'SubTitle',
                            ),
                          ),
                          Text(
                            "234795-7456-0008",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SubTitle',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Time & Date",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                              fontFamily: 'SubTitle',
                            ),
                          ),
                          Text(
                            "01/03/22 , 11:00 AM",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SubTitle',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Center(
                        child: MaterialButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              builder: (context) {
                                return Container(
                                  height: height * 0.7,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(40))),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: height * 0.03,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Choose payment methode",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: 'SubTitle',
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            InkResponse(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Icon(Icons.close)),
                                          ],
                                        ),
                                        SizedBox(
                                          height: height * 0.07,
                                        ),
                                        Text(
                                          "Manual Verification",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontFamily: 'SubTitle',
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Expanded(
                                            child: ListView.builder(
                                          itemCount: 4,
                                          itemBuilder: (context, index) {
                                            return Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 20),
                                              width: width,
                                              height: height * 0.12,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  border: Border.all(
                                                      color: select == index
                                                          ? Color(0xffFB9089)
                                                          : Colors.black54)),
                                              child: Center(
                                                child: ListTile(
                                                  onTap: () {
                                                    setState(() {
                                                      select = index;
                                                      isselect = true;
                                                    });
                                                  },
                                                  leading: Image.asset(
                                                      "${image[index]}"),
                                                  title: Text(
                                                    "${title[index]}",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                        fontFamily: 'SubTitle',
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  subtitle: Text(
                                                    "${subtitle[index]}",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 12,
                                                        fontFamily: 'SubTitle',
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ))
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          minWidth: width,
                          height: height * 0.075,
                          color: Color(0xffecf4ff),
                          elevation: 0,
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          child: Text(
                            "Choose payment methode",
                            style: TextStyle(
                                color: Color(0xff011A51),
                                fontSize: 16,
                                fontFamily: 'SubTitle',
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/privacylogo.png"),
                          SizedBox(
                            width: width * 0.04,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "All your transactions are safe "
                                "and fast,\nBy continuing this transaction, "
                                "you ",
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 12,
                                    fontFamily: 'SubTitle'),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "agree to our",
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 12,
                                        fontFamily: 'SubTitle'),
                                  ),
                                  Text(
                                    "Terms & Conditions.",
                                    style: TextStyle(
                                        color: Color(0xffFF897E),
                                        fontSize: 12,
                                        fontFamily: 'SubTitle'),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
              SizedBox(
                height: height * 0.07,
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    if (isselect == true) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            insetPadding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(
                              width: width * 0.89,
                              height: height * 0.6,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: height * 0.03,
                                  ),
                                  Image.asset(
                                      "assets/images/transection_sucsess.png"),
                                  SizedBox(
                                    height: height * 0.03,
                                  ),
                                  Text(
                                    "Transaction Successful",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        fontFamily: 'SubTitle'),
                                  ),
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur"
                                    "\nadipiscing elit. Eu dolor, bibendum "
                                    "\npurus eu mi, purus lorem. ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                        fontFamily: 'SubTitle'),
                                  ),
                                  SizedBox(
                                    height: height * 0.1,
                                  ),
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                BalenceProfilePage2(),
                                          ));
                                    },
                                    color: Color(0xffFB847C),
                                    minWidth: width * 0.35,
                                    height: height * 0.065,
                                    child: Text(
                                      "DONE",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'SubTitle',
                                          fontSize: 15),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Please select payment method")));
                    }
                  },
                  minWidth: width * 0.65,
                  height: height * 0.065,
                  color: Color(0xffFB9089),
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
              ),
              SizedBox(
                height: height * 0.06,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
