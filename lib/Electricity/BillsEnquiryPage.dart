import 'package:flutter/material.dart';

class BillsEnquiryPage extends StatefulWidget {
  const BillsEnquiryPage({Key? key}) : super(key: key);

  @override
  State<BillsEnquiryPage> createState() => _BillsEnquiryPageState();
}

class _BillsEnquiryPageState extends State<BillsEnquiryPage> {
  List image = [
    "assets/images/home/electric home.png",
    "assets/images/home/electric office.png",
    "assets/images/home/Villa bali.png"
  ];
  List title = ["My House", "Electric Office", "VIlla Bali"];
  List amount = ["15", "35", "5"];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffeff5fe),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.05,
          ),
          Center(child: Image.asset("assets/images/Electric (1).png")),
          SizedBox(
            height: height * 0.03,
          ),
          Text(
            "\$50.00",
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Su'
                    'bTitle',
                fontSize: 32,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "need to be pay",
            style: TextStyle(
                color: Colors.black26,
                fontFamily: 'Su'
                    'bTitle',
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: height * 0.08,
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Bills Enquiry",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Su'
                                'bTitle',
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                            color: Color(0xffFF897E),
                            fontFamily: 'Su'
                                'bTitle',
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Column(
                    children: List.generate(
                      3,
                      (index) => Container(
                        margin: EdgeInsets.only(bottom: 17),
                        width: width,
                        height: height * 0.11,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: ListTile(
                            leading: Image.asset("${image[index]}"),
                            title: Text(
                              "${title[index]}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'SubTitle'),
                            ),
                            subtitle: Text(
                              "**** *** 3980",
                              style: TextStyle(
                                  height: 2,
                                  fontSize: 12,
                                  color: Colors.black26,
                                  fontFamily: 'SubTitle',
                                  fontWeight: FontWeight.w500),
                            ),
                            trailing: Text(
                              "\$${amount[index]}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'SubTitle'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
