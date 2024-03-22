import 'package:flutter/material.dart';
import 'package:money_transfer/CommonTextFormField.dart';

class ElectricPage extends StatefulWidget {
  const ElectricPage({Key? key}) : super(key: key);

  @override
  State<ElectricPage> createState() => _ElectricPageState();
}

class _ElectricPageState extends State<ElectricPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffeff5fe),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.1,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      )),
                  label: Text(
                    "Enter Token number",
                    style: TextStyle(
                        color: Colors.black26,
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                  ),
                  suffixIcon: Padding(
                    padding:
                        const EdgeInsets.only(right: 10, top: 5, bottom: 5),
                    child: Container(
                      width: 60,
                      height: 10,
                      decoration: BoxDecoration(
                          color: Color(0xffdde9fe),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          "CHECK",
                          style: TextStyle(color: Color(0xff011A51)),
                        ),
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            TextField(
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
              decoration: InputDecoration(
                prefix: Text(
                  "\$ ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    )),
                label: Text(
                  "Enter amount",
                  style: TextStyle(
                      color: Colors.black26,
                      fontSize: 13,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            MaterialButton(
              onPressed: () {},
              minWidth: width * 0.3,
              height: height * 0.06,
              color: Color(0xffFB847C),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "BUY",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
