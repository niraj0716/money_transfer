import 'package:flutter/material.dart';

class ContactlistPage extends StatefulWidget {
  const ContactlistPage({Key? key}) : super(key: key);

  @override
  State<ContactlistPage> createState() => _ContactlistPageState();
}

class _ContactlistPageState extends State<ContactlistPage> {
  List name = ["Edwardo", "Jasson", "Kemod", "Dasep"];
  List image = [
    "assets/images/Contactlist/Mask Group (1).png",
    "assets/images/Contactlist/Mask Group (2).png",
    "assets/images/Contactlist/Mask Group (3).png",
    "assets/images/Contactlist/Mask Group (4).png"
  ];
  List title = [
    "Diani Otelanis Teori",
    "Bahrun ST",
    "Ririn Panjaitan spd",
    "Eki Sulungpati Mpd",
    "Septiani Destri seulo",
    "Nuni Eksitin"
  ];
  List leading = [
    "assets/images/Contactlist/d.png",
    "assets/images/Contactlist/b.png",
    "assets/images/Contactlist/r.png",
    "assets/images/Contactlist/e.png",
    "assets/images/Contactlist/s.png",
    "assets/images/Contactlist/n.png"
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
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
                    "Contact List",
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
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Recent contact",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'SubTitle',
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              children: List.generate(
                  4,
                  (index) => Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Column(
                          children: [
                            Image.asset("${image[index]}"),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              "${name[index]}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'SubTitle'),
                            )
                          ],
                        ),
                      )),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "All contact",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'SubTitle',
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.asset(
                      "${leading[index]}",
                    ),
                    title: Text(
                      "${title[index]}",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'SubTitle',
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "+91 7016065930",
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'SubTitle',
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
