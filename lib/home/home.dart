import 'package:flutter/material.dart';
import 'package:smarthome/components/bottomnavbar.dart';
import 'package:smarthome/components/gradienttext.dart';
import 'package:smarthome/components/menubutton.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isHvac = false;
  bool isLight = false;
  bool isWindow = false;
  bool isFan = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(42, 45, 54, 1),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              MenuButton(
                icon: Icons.menu,
                left: 35,
                right: 0,
              ),
              MenuButton(
                icon: Icons.notifications_outlined,
                left: 0,
                right: 35,
              )
            ],
          ),
          Container(
              width: 360,
              height: 180,
              margin: const EdgeInsets.only(top: 10, left: 30),
              child: Row(
                children: [
                  Image.asset("assets/img/dp.png", width: 100),
                  Container(
                    margin: const EdgeInsets.only(left: 35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 5),
                          child: const Text(
                            "Welcome Home,",
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.5),
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Text(
                          "Alwyn Abraham",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              )),
          Container(
            width: 360,
            height: 160,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(56, 59, 70, 1),
                borderRadius: BorderRadius.circular(20)),
            child: Row(children: [
              Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Image.asset("assets/img/sunny_cloudy.png")),
              Container(
                margin: const EdgeInsets.only(left: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const GradientText(
                          "27",
                          style: TextStyle(
                              fontSize: 60, fontWeight: FontWeight.bold),
                          gradient: LinearGradient(colors: [
                            Color.fromRGBO(255, 255, 255, 1),
                            Color.fromRGBO(255, 255, 255, 0)
                          ]),
                        ),
                        Container(
                            margin: const EdgeInsets.only(bottom: 40),
                            child: const Text("o",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(132, 151, 201, 1))))
                      ],
                    ),
                    const Text("Sunny Cloudy",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(132, 151, 201, 1)))
                  ],
                ),
              )
            ]),
          ),
          Container(
              width: 360,
              height: 85,
              margin: const EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(56, 59, 70, 1),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 40, right: 24),
                    child: Icon(
                      Icons.lock_outline,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "Door is locked.",
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    width: 100,
                    height: 45,
                    margin: const EdgeInsets.only(left: 50),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(110, 133, 193, 1),
                      borderRadius: BorderRadius.circular(55),
                    ),
                    child: Container(
                        margin: const EdgeInsets.only(top: 16, left: 30),
                        child: const Text(
                          "Unlock",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )),
                  )
                ],
              )),
          Stack(children: [
            Container(
              width: 250,
              height: 65,
              margin: const EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(56, 59, 70, 0.3),
                  borderRadius: BorderRadius.circular(80)),
            ),
            Container(
              width: 135,
              height: 65,
              margin: const EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(56, 59, 70, 1),
                  borderRadius: BorderRadius.circular(80)),
              child: Container(
                  margin: const EdgeInsets.only(top: 24, left: 38),
                  child: const Text(
                    "Devices",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  )),
            ),
            Container(
              width: 135,
              height: 65,
              margin: const EdgeInsets.only(top: 30, left: 115),
              decoration: BoxDecoration(
                  // color: const Color.fromRGBO(56, 59, 70, 1),
                  borderRadius: BorderRadius.circular(80)),
              child: Container(
                  margin: const EdgeInsets.only(top: 24, left: 42),
                  child: const Text(
                    "Rooms",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  )),
            ),
          ]),
          Container(
            margin: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/hvac');
                  },
                  child: Container(
                    width: 180,
                    height: 220,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(56, 59, 70, 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(20),
                              child: const Icon(
                                Icons.menu,
                                size: 32,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: const Text(
                            "HVAC",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 40, left: 25),
                              child: Row(
                                children: [
                                  const GradientText(
                                    "27",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                    gradient: LinearGradient(colors: [
                                      Color.fromRGBO(255, 255, 255, 1),
                                      Color.fromRGBO(255, 255, 255, 0)
                                    ]),
                                  ),
                                  Container(
                                      margin: const EdgeInsets.only(bottom: 20),
                                      child: const Text("o",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromRGBO(
                                                  132, 151, 201, 1)))),
                                  Container(
                                      margin: const EdgeInsets.only(left: 45),
                                      child: Switch(
                                        value: isHvac,
                                        onChanged: (value) {
                                          setState(() {
                                            isHvac = value;
                                          });
                                        },
                                        activeColor: const Color.fromRGBO(
                                            110, 133, 193, 0.5),
                                      ))
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 180,
                  height: 220,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(56, 59, 70, 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(20),
                            child: const Icon(
                              Icons.light_outlined,
                              size: 32,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          "Lights",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 40, left: 25),
                            child: Row(
                              children: [
                                const GradientText(
                                  "OFF",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                  gradient: LinearGradient(colors: [
                                    Color.fromRGBO(255, 255, 255, 1),
                                    Color.fromRGBO(255, 255, 255, 0)
                                  ]),
                                ),
                                Container(
                                    margin: const EdgeInsets.only(left: 45),
                                    child: Switch(
                                      value: isLight,
                                      onChanged: (value) {
                                        setState(() {
                                          isLight = value;
                                        });
                                      },
                                      activeColor: const Color.fromRGBO(
                                          110, 133, 193, 0.5),
                                    ))
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 180,
                      height: 220 - (220 * 50 / 100),
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(56, 59, 70, 1),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Container(
                      width: 180,
                      height: 220,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(110, 133, 193, 0.3),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: const EdgeInsets.all(20),
                                child: const Icon(
                                  Icons.menu,
                                  size: 32,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 30),
                            child: const Text(
                              "Water Tank",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 50, left: 25),
                                child: Row(
                                  children: [
                                    const GradientText(
                                      "20",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                      gradient: LinearGradient(colors: [
                                        Color.fromRGBO(255, 255, 255, 1),
                                        Color.fromRGBO(255, 255, 255, 0)
                                      ]),
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(top: 8),
                                        child: const Text("%",
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromRGBO(
                                                    132, 151, 201, 1)))),
                                    Container(
                                        margin: const EdgeInsets.only(left: 55),
                                        child: const Text(
                                          "Active",
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(0, 255, 41, 1),
                                              fontSize: 12),
                                        ))
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 180,
                  height: 220,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(56, 59, 70, 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(20),
                            child: const Icon(
                              Icons.menu,
                              size: 32,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          "Window",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 40, left: 25),
                            child: Row(
                              children: [
                                const GradientText(
                                  "OFF",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                  gradient: LinearGradient(colors: [
                                    Color.fromRGBO(255, 255, 255, 1),
                                    Color.fromRGBO(255, 255, 255, 0)
                                  ]),
                                ),
                                Container(
                                    margin: const EdgeInsets.only(left: 45),
                                    child: Switch(
                                      value: isWindow,
                                      onChanged: (value) {
                                        setState(() {
                                          isWindow = value;
                                        });
                                      },
                                      activeColor: const Color.fromRGBO(
                                          110, 133, 193, 0.5),
                                    ))
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          )
        ]),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
