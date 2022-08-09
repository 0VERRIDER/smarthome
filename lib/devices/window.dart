import 'package:flutter/material.dart';
import 'package:smarthome/components/bottomnavbar.dart';
import 'package:smarthome/components/gradienttext.dart';
import 'package:smarthome/components/menubutton.dart';

class WindowPage extends StatefulWidget {
  const WindowPage({Key? key}) : super(key: key);

  @override
  State<WindowPage> createState() => _WindowPageState();
}

class _WindowPageState extends State<WindowPage> {
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
              const MenuButton(
                icon: Icons.notifications_outlined,
                left: 0,
                right: 35,
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: const Text("Window",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(
                    top: 50,
                    bottom: 30,
                  ),
                  child: Image.asset("assets/img/window_half.png", width: 130)),
              Container(
                margin: const EdgeInsets.only(left: 45),
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
                        "20",
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
                                  color: Color.fromRGBO(132, 151, 201, 1))))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 75,
                        margin: const EdgeInsets.only(left: 20, top: 20),
                        child: const Text("ROOM LIGHT        INTENSITY",
                            style:
                                TextStyle(color: Colors.white, fontSize: 10)),
                      )
                    ],
                  ),
                ]),
              ),
            ],
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
                      Icons.window_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "Window is open.",
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    width: 100,
                    height: 45,
                    margin: const EdgeInsets.only(left: 30),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(110, 133, 193, 1),
                      borderRadius: BorderRadius.circular(55),
                    ),
                    child: Container(
                        margin: const EdgeInsets.only(top: 16, left: 32),
                        child: const Text(
                          "Close",
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
                              Icons.lightbulb_outlined,
                              color: Colors.white,
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        GradientText(
                          "ON",
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
                          child: const Text("LIGHT       STATUS",
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
                                    color: Color.fromRGBO(132, 151, 201, 1))))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20, top: 20),
                          child: const Text("AIR FLOW\nPERCENTAGE",
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
