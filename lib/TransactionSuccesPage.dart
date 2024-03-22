import 'package:flutter/material.dart';
import 'package:money_transfer/BalenceProfilePage.dart';

class TransactionSuccesPage extends StatefulWidget {
  const TransactionSuccesPage({Key? key, required this.money, this.name})
      : super(key: key);
  final double money;
  final name;
  @override
  State<TransactionSuccesPage> createState() => _TransactionSuccesPageState();
}

class _TransactionSuccesPageState extends State<TransactionSuccesPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.close),
              SizedBox(
                height: height * 0.07,
              ),
              Expanded(
                  child: Container(
                width: width,
                height: 10,
                decoration: BoxDecoration(
                    color: Color(0xff011A51),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Image.asset("assets/images/TransectionSucces.png"),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Text(
                        "Transffered Succesfully",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            fontFamily: "Title"),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Divider(
                        color: Color(0xffE2E9EB),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Name",
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 12,
                              fontFamily: 'SubTitle',
                            ),
                          ),
                          Text(
                            "${widget.name}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'SubTitle',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Transaction ID",
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 12,
                              fontFamily: 'SubTitle',
                            ),
                          ),
                          Text(
                            "234795-7456-0008",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'SubTitle',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Amount",
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 12,
                              fontFamily: 'SubTitle',
                            ),
                          ),
                          Text(
                            "\$${widget.money.toStringAsFixed(1)}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'SubTitle',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Transfer cost",
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 12,
                              fontFamily: 'SubTitle',
                            ),
                          ),
                          Text(
                            "\$00.0",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'SubTitle',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Time & Date",
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 12,
                              fontFamily: 'SubTitle',
                            ),
                          ),
                          Text(
                            "01/03/22 , 11:00 AM",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'SubTitle',
                            ),
                          ),
                        ],
                      ),
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
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BalenceProfilePage(),
                        ));
                  },
                  minWidth: width * 0.6,
                  height: height * 0.065,
                  color: Color(0xffFB9089),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.transparent)),
                  child: Text(
                    "DONE",
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
