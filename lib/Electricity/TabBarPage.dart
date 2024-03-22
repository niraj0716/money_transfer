import 'package:flutter/material.dart';
import 'package:money_transfer/Electricity/BillsEnquiryPage.dart';
import 'package:money_transfer/Electricity/ElectricPage.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
    tabController.addListener(() {
      setState(() {
        select = tabController.index;
      });
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  int select = 0;
  List tabname = ["Electricity Token", "Bills"];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffeff5fe),
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          title: Center(
            child: Text(
              "Electric",
              style: TextStyle(
                  color: Color(0xff011A51),
                  fontSize: 22,
                  fontFamily: 'SubTitle'),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Container(
              color: Color(0xffe9f0f7),
              margin: EdgeInsets.only(bottom: 5),
              width: width * 0.95,
              height: height * 0.07,
              child: Center(
                child: TabBar(
                  indicatorColor: Colors.transparent,
                  // indicatorSize: TabBarIndicatorSize.tab,
                  indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
                  indicatorWeight: 2,
                  labelColor: Colors.white,

                  unselectedLabelColor: Colors.black54,
                  labelPadding: EdgeInsets.only(bottom: 10),
                  controller: tabController,
                  tabs: List.generate(
                    2,
                    (index) => Container(
                      width: width * 0.4,
                      height: height * 0.07,
                      decoration: BoxDecoration(
                          color: select == index
                              ? Color(0xff011A51)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text("${tabname[index]}"),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )),
      body: TabBarView(controller: tabController, children: [
        ElectricPage(),
        BillsEnquiryPage(),
      ]),
    );
  }
}
