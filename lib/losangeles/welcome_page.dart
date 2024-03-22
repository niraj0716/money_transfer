import 'package:flutter/material.dart';

class WelcomePage1 extends StatefulWidget {
  const WelcomePage1({super.key});

  @override
  State<WelcomePage1> createState() => _WelcomePage1State();
}

class _WelcomePage1State extends State<WelcomePage1> {
  List name = [
    "Burgers",
    "Starter",
    "Pizzas",
    "Drinks",
  ];
  List ns = [
    "Burgers",
    "Pizzas",
  ];
  List names = [
    "Burgers",
    "Sandwich",
  ];
  List names2 = [
    "chocolete burger",
    "clud sandwich",
  ];
  List ns2 = [
    "ultimate crunchy burger",
    "super veggie Pizza",
  ];
  List name1 = ["Tandoori Pizza", "Crunchy Pizza"];
  List name2 = ["\$33.00", "\$99.00"];
  List image = [
    "assets/images/download1.jpg",
    "assets/images/download (1).jpg",
    "assets/images/download (2).jpg",
    "assets/images/download (3).jpg"
  ];
  List images = ["assets/images/23.png", "assets/images/23.png"];
  List imagess = ["assets/images/b1.png", "assets/images/b2.png"];
  List image1 = ["assets/images/i222.png", "assets/images/i222.png"];
  List image2 = ["assets/images/p1.png", "assets/images/p2.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Welcome to",
                          style: TextStyle(fontSize: 20),
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on),
                            Text(
                              "Los Angeles",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.home),
                  ],
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Serach here",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 165,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'assets/images/ss1.png',
                    scale: 0.3,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Categories",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined),
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 95,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 79,
                            width: 80,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Image.asset("${image[index]}",
                                fit: BoxFit.cover),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${name[index]}",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 5,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Trending",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined),
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 290,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 250,
                        width: 200,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 190,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(35),
                                ),
                              ),
                              child: Image.asset("${images[index]}",
                                  fit: BoxFit.cover),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "${ns[index]}",
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.emoji_food_beverage,
                                        color: Colors.red,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "${ns2[index]}",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Text("${name2[index]}"),
                                      Spacer(),
                                      Container(
                                        height: 30,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Add",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 16),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    "assets/images/s2.png",
                    fit: BoxFit.cover,
                  ),

                  // child: Image.network(''),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Today's Specail",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 290,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 290,
                        width: 200,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 190,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(35),
                                ),
                              ),
                              child: Image.asset("${imagess[index]}",
                                  fit: BoxFit.cover),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "${names[index]}",
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.emoji_food_beverage,
                                        color: Colors.red,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "${names2[index]}",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Text("${name2[index]}"),
                                      Spacer(),
                                      Container(
                                        height: 30,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Add",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 16),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 140,
                        width: 200,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 190,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(35),
                                ),
                              ),
                              child: Image.asset("${image1[index]}",
                                  fit: BoxFit.cover),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Recommended",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined),
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 290,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 250,
                        width: 200,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 190,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(35),
                                ),
                              ),
                              child: Image.asset("${image2[index]}",
                                  fit: BoxFit.cover),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Pizzas",
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.emoji_food_beverage,
                                        color: Colors.red,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "${name1[index]}",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Text("${name2[index]}"),
                                      Spacer(),
                                      Container(
                                        height: 30,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Add",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 16),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    "assets/images/h1.png",
                    fit: BoxFit.cover,
                  ),
                  // child: Image.network(''),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Testimonials",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 180,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    "assets/images/nsh.png",
                    fit: BoxFit.cover,
                  ),

                  // child: Image.network(''),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
