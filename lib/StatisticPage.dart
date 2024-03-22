import 'package:flutter/material.dart';

class StatisticPage extends StatefulWidget {
  const StatisticPage({Key? key}) : super(key: key);

  @override
  State<StatisticPage> createState() => _StatisticPageState();
}

class _StatisticPageState extends State<StatisticPage> {
  List<Map<String, dynamic>> data = [
    {
      "key": "Day",
      "value": [
        "Sun",
        "Mon",
        "Tue",
        "Wed",
        "Thu",
        "Fri",
        "Sat",
      ],
    },
    {
      "key": "Week",
      "value": [
        "Week 1",
        "Week 2",
        "Week 3",
        "Week 4",
      ],
    },
    {
      "key": "Month",
      "value": [
        "Jan",
        "Feb",
        "Mar",
        "Apr",
        "May",
        "Jun",
        "Jul",
        "Aug",
        "Sup",
        "Oct",
        "Nav",
        "Dec",
      ],
    },
    {
      "key": "Year",
      "value": [
        2000,
        2001,
        2002,
        2003,
        2004,
        2005,
        2006,
      ],
    }
  ];
  List image = [
    "assets/images/Profile/Shopping.png",
    "assets/images/Profile/grocery.png"
  ];

  int select = 0;
  int select2 = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    "Statistic",
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
              height: height * 0.02,
            ),
            Text(
              "Current Balance ",
              style: TextStyle(
                  color: Colors.black26,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'SubTitle'),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "\$7800.50",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Icon(
                    Icons.arrow_downward_sharp,
                    size: 12,
                    color: Colors.red,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    "5,25%",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                data.length,
                (index) => InkResponse(
                  onTap: () {
                    setState(() {
                      select = index;
                    });
                  },
                  child: Text(
                    "${data[index]["key"]}",
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'SubTitle',
                        fontWeight: FontWeight.w600,
                        color: select == index ? Colors.red : Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Image.asset(
              "assets/images/Group.png",
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              height: height * 0.015,
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: data[select]["value"].length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: InkResponse(
                      onTap: () {
                        setState(() {
                          select2 = index;
                        });
                      },
                      child: Text(
                        "${data[select]["value"][index]}",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'SubTitle',
                            fontWeight: FontWeight.w500,
                            color:
                                select2 == index ? Colors.red : Colors.black26),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: width * 0.35,
                  height: height * 0.07,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black26,
                      )),
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Image.asset("assets/images/Profile/incom.png"),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Income",
                            style:
                                TextStyle(color: Colors.black26, fontSize: 12),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Text(
                            "\$3460",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: width * 0.35,
                  height: height * 0.07,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black26,
                      )),
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Image.asset("assets/images/Profile/outcom.png"),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Outcome",
                            style:
                                TextStyle(color: Colors.black26, fontSize: 12),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Text(
                            "\$2500",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Spendings",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Icon(Icons.more_horiz)
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Image.asset("${image[index]}");
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
