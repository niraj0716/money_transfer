import 'package:flutter/material.dart';
import 'package:money_transfer/BalenceProfilePage2.dart';
import 'package:money_transfer/CommonButton.dart';

class WithdarwPage extends StatefulWidget {
  const WithdarwPage({Key? key}) : super(key: key);

  @override
  State<WithdarwPage> createState() => _WithdarwPageState();
}

class _WithdarwPageState extends State<WithdarwPage> {
  double money = 20.00;
  int select = 3;
  int AccountType = 0;
  List<double> money_list = [05, 10, 15, 20, 50, 100, 300, 500];
  List image = [
    "assets/images/withdarw/Group 273.png",
    "assets/images/withdarw/Group 284.png",
    "assets/images/withdarw/Transfer.png",
  ];
  List title = [
    "Personal Account",
    "Business Account",
    "Saving Account",
  ];
  List subtitle = [
    "**** ****  2878",
    "**** ****  2526",
    "**** ****  3048",
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("assets/images/Back.png"),
                  Spacer(),
                  Text(
                    "Withdarw ",
                    style: TextStyle(
                      color: Color(0xff011A51),
                      fontSize: 22,
                      fontFamily: 'Title',
                    ),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Amount",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'SubTitle',
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Text(
                "\$${money.toStringAsFixed(2)}",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Title',
                    color: Colors.black,
                    fontWeight: FontWeight.w800),
              ),
              Text(
                "Your Balance \$9840.50",
                style: TextStyle(
                    fontSize: 11,
                    fontFamily: 'SubTitle',
                    color: Colors.grey,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              SliderTheme(
                  data: SliderThemeData(
                      activeTickMarkColor: Color(0xffFF897E),
                      activeTrackColor: Color(0xffFF897E),
                      inactiveTrackColor: Colors.white,
                      thumbColor: Color(0xffFF897E),
                      trackHeight: 3.5),
                  child: Slider.adaptive(
                    min: 5,
                    max: 500,
                    divisions: 100,
                    value: money,
                    onChanged: (value) {
                      setState(() {
                        money = value;
                      });
                    },
                  )),
              SizedBox(
                height: height * 0.01,
              ),
              Wrap(
                children: List.generate(
                    8,
                    (index) => InkResponse(
                          onTap: () {
                            setState(() {
                              money = money_list[index];
                              select = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.all(8),
                            height: height * 0.08,
                            width: width * 0.18,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: index == select
                                    ? Color(0xffFF897E)
                                    : Colors.transparent,
                                border: Border.all(
                                  color: index == select
                                      ? Color(0xffFF897E)
                                      : Colors.black26,
                                )),
                            child: Center(
                                child: Text(
                              "\$${money_list[index].toStringAsFixed(0)}",
                              style: TextStyle(
                                  color: index == select
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'SubTitle',
                                  fontWeight: FontWeight.w800),
                            )),
                          ),
                        )),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Wallet Type",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        fontFamily: 'SubTitle'),
                  ),
                  Text(
                    "Add",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        fontFamily: 'SubTitle'),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
