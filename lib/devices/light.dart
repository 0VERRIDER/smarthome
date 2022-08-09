import 'package:flutter/material.dart';
import 'package:smarthome/components/bottomnavbar.dart';
import 'package:smarthome/components/gradienttext.dart';
import 'package:smarthome/components/menubutton.dart';

class LightsPage extends StatefulWidget {
  const LightsPage({Key? key}) : super(key: key);

  @override
  State<LightsPage> createState() => _LightsPageState();
}

class _LightsPageState extends State<LightsPage> {
  bool isHvac = false;
  bool isLight = false;
  bool isWindow = false;
  bool isFan = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(42, 45, 54, 1),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    margin: const EdgeInsets.only(right: 60),
                    child: Image.asset(
                      "assets/img/lamp.png",
                      width: 140,
                    )),
              ],
            ),
            Visibility(
              visible: isLight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      margin: const EdgeInsets.only(right: 40, top: 225),
                      child: Image.asset(
                        "assets/img/light.png",
                        width: 180,
                      )),
                ],
              ),
            ),
            Column(children: [
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
                  const MenuButton(
                    icon: Icons.notifications_outlined,
                    left: 0,
                    right: 35,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 60, left: 60),
                    child: const Text("Lights",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22)),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 40, left: 30),
                child: Row(
                  children: [
                    const Text(
                      "Power",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Switch(
                          value: isLight,
                          onChanged: (value) {
                            setState(() {
                              isLight = value;
                            });
                          },
                          activeColor: const Color.fromRGBO(110, 133, 193, 0.5),
                        ))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 40, top: 20),
                child: Row(
                  children: const [
                    Text(
                      "Status: ",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    Text(
                      "online",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 140),
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
                                  Icons.light_mode_outlined,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const GradientText(
                              "12",
                              style: TextStyle(
                                  fontSize: 35, fontWeight: FontWeight.bold),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(255, 255, 255, 1),
                                Color.fromRGBO(255, 255, 255, 0)
                              ]),
                            ),
                            Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: const Text("%",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromRGBO(132, 151, 201, 1))))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 20, top: 20),
                              child: const Text("ROOM\nLIGHT INTENSITY",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10)),
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
                                  Icons.light_mode,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const GradientText(
                              "12",
                              style: TextStyle(
                                  fontSize: 35, fontWeight: FontWeight.bold),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(255, 255, 255, 1),
                                Color.fromRGBO(255, 255, 255, 0)
                              ]),
                            ),
                            Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: const Text("%",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromRGBO(132, 151, 201, 1))))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 20, top: 20),
                              child: const Text("OUTDOOR\nLIGHT INTENSITY",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10)),
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
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
