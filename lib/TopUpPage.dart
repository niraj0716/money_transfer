import 'package:flutter/material.dart';
import 'package:money_transfer/PaymentDetailsPage.dart';

class TopUpPage extends StatefulWidget {
  const TopUpPage({Key? key}) : super(key: key);

  @override
  State<TopUpPage> createState() => _TopUpPageState();
}

class _TopUpPageState extends State<TopUpPage> {
  double money = 20.00;
  int select = 3;
  int wallettypeselect = 0;
  List<double> money_list = [05, 10, 15, 20, 50, 100, 300, 500];
  List image = [
    "assets/images/paypall.png",
    "assets/images/APPLE.png",
    "assets/images/macd.png",
    "assets/images/amazon.png",
  ];
  List title = [
    "Paypall",
    "Apple",
    "Mcdonalds",
    "Amazon",
  ];
  List subtitle = [
    "**** ****  2878",
    "**** ****  2526",
    "**** ****  3048",
    "**** ****  7532",
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
                    "Transaction Details",
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
                height: height * 0.05,
              ),
              Text(
                "Amount",
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'SubTitle',
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: height * 0.02,
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
                height: height * 0.015,
              ),
              Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(
                      decelerationRate: ScrollDecelerationRate.fast),
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                        onTap: () {
                          setState(() {
                            wallettypeselect = index;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PaymentDetailsPage(
                                  name: title[wallettypeselect],
                                  money: money,
                                ),
                              ));
                        },
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
                        leading: CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage("${image[index]}"),
                        ),
                        title: Text(
                          "${title[index]}",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: 'SubTitle',
                              fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                          "${subtitle[index]}",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontFamily: 'SubTitle',
                              fontWeight: FontWeight.w500),
                        ),
                        trailing: wallettypeselect == index
                            ? Icon(
                                Icons.check_circle,
                                color: Color(0xffFF897E),
                                size: 30,
                              )
                            : Icon(
                                Icons.circle,
                                size: 30,
                              ));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
