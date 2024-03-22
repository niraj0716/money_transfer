import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List image = [
    "assets/images/Profile/Security.png",
    "assets/images/Profile/help.png",
    "assets/images/Profile/privacy policy.png"
  ];
  List title = ["Security", "Help", "Privacy Policy"];
  List subtitle = [
    "Your Password Acount",
    "Need More Help",
    "Your Password Acount"
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
                    "Profile",
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
              height: height * 0.04,
            ),
            Image.asset("assets/images/profileimage.png"),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              "Rene Wells",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'SubTitle',
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "Roday43@gmail.com",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w200,
                  fontFamily: 'SubTitle',
                  fontSize: 11),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Container(
              height: height * 0.13,
              width: width * 0.9,
              decoration: BoxDecoration(
                  color: Color(0xffFF897E),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Income",
                          style: TextStyle(
                              color: Colors.white70,
                              fontFamily: 'SubTitle',
                              fontWeight: FontWeight.w700,
                              fontSize: 12),
                        ),
                        SizedBox(
                          height: height * 0.003,
                        ),
                        Text(
                          "\$3460",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'SubTitle',
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    Spacer(),
                    Image.asset("assets/images/Line.png"),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Outcome",
                          style: TextStyle(
                              color: Colors.white70,
                              fontFamily: 'SubTitle',
                              fontWeight: FontWeight.w700,
                              fontSize: 12),
                        ),
                        SizedBox(
                          height: height * 0.003,
                        ),
                        Text(
                          "\$2500",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'SubTitle',
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    Spacer()
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "General",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'SubTitle',
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Column(
              children: List.generate(
                  3,
                  (index) => Container(
                        width: width,
                        height: height * 0.1,
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black45)),
                        child: Center(
                          child: ListTile(
                            leading: Image.asset("${image[index]}"),
                            title: Text(
                              "${title[index]}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'SubTitle',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text(
                              "${subtitle[index]}",
                              style: TextStyle(
                                  color: Colors.black26,
                                  fontFamily: 'SubTitle',
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500),
                            ),
                            trailing: Icon(
                              Icons.keyboard_arrow_right,
                              size: 30,
                            ),
                          ),
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
