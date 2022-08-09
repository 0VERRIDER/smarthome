import 'package:flutter/material.dart';
import 'package:smarthome/components/bottomnavbar.dart';
import 'package:smarthome/components/gradienttext.dart';
import 'package:smarthome/components/menubutton.dart';

class HvacPage extends StatefulWidget {
  const HvacPage({Key? key}) : super(key: key);

  @override
  State<HvacPage> createState() => _HvacPageState();
}

class _HvacPageState extends State<HvacPage> {
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
                icon: Icons.arrow_back,
                left: 35,
                right: 0,
                onTap: () {
                  Navigator.pop(context);
                },
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
              height: 250,
              margin: const EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(56, 59, 70, 1),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: const Text(
                      "HVAC",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: Image.asset(
                      "assets/img/hvac.png",
                      width: 250,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "Status :",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                        Text(
                          "   Online",
                          style: TextStyle(fontSize: 10, color: Colors.green),
                        ),
                      ],
                    ),
                  )
                ],
              )),
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
                      Icons.power_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "HVAC Power.",
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
                        margin: const EdgeInsets.only(top: 16, left: 15),
                        child: const Text(
                          "SHUTDOWN",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )),
                  )
                ],
              )),
          Container(
            margin: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(56, 59, 70, 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Padding(
                            padding: EdgeInsets.all(20),
                            child: Icon(
                              Icons.menu,
                              color: Colors.white,
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const GradientText(
                          "27",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                          gradient: LinearGradient(colors: [
                            Color.fromRGBO(255, 255, 255, 1),
                            Color.fromRGBO(255, 255, 255, 0)
                          ]),
                        ),
                        Container(
                            margin: const EdgeInsets.only(bottom: 30),
                            child: const Text("o",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(132, 151, 201, 1))))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 70,
                          margin: const EdgeInsets.only(left: 20, top: 20),
                          child: const Text("ROOM       TEMPRATURE",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10)),
                        )
                      ],
                    ),
                  ]),
                ),
                Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(56, 59, 70, 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Padding(
                            padding: EdgeInsets.all(20),
                            child: Icon(
                              Icons.menu,
                              color: Colors.white,
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const GradientText(
                          "27",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                          gradient: LinearGradient(colors: [
                            Color.fromRGBO(255, 255, 255, 1),
                            Color.fromRGBO(255, 255, 255, 0)
                          ]),
                        ),
                        Container(
                            margin: const EdgeInsets.only(bottom: 30),
                            child: const Text("o",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(132, 151, 201, 1))))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 75,
                          margin: const EdgeInsets.only(left: 20, top: 20),
                          child: const Text("ATMOSPHERIC        TEMPRATURE",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10)),
                        )
                      ],
                    ),
                  ]),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(56, 59, 70, 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Padding(
                            padding: EdgeInsets.all(20),
                            child: Icon(
                              Icons.menu,
                              color: Colors.white,
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        GradientText(
                          "MID",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                          gradient: LinearGradient(colors: [
                            Color.fromRGBO(255, 255, 255, 1),
                            Color.fromRGBO(255, 255, 255, 0)
                          ]),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 70,
                          margin: const EdgeInsets.only(left: 20, top: 20),
                          child: const Text("FAN        SPEED",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10)),
                        )
                      ],
                    ),
                  ]),
                ),
                Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(56, 59, 70, 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Padding(
                            padding: EdgeInsets.all(20),
                            child: Icon(
                              Icons.flash_on_outlined,
                              color: Colors.white,
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const GradientText(
                          "0.144",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                          gradient: LinearGradient(colors: [
                            Color.fromRGBO(255, 255, 255, 1),
                            Color.fromRGBO(255, 255, 255, 0)
                          ]),
                        ),
                        Container(
                            margin: const EdgeInsets.only(top: 10, left: 5),
                            child: const Text("W",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(132, 151, 201, 1))))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 75,
                          margin: const EdgeInsets.only(left: 20, top: 35),
                          child: const Text("ATMOSPHERIC        TEMPRATURE",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10)),
                        )
                      ],
                    ),
                  ]),
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
