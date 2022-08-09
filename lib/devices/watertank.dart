import 'package:flutter/material.dart';
import 'package:smarthome/components/bottomnavbar.dart';
import 'package:smarthome/components/gradienttext.dart';
import 'package:smarthome/components/menubutton.dart';

class WaterTankPage extends StatefulWidget {
  const WaterTankPage({Key? key}) : super(key: key);

  @override
  State<WaterTankPage> createState() => _WaterTankPageState();
}

class _WaterTankPageState extends State<WaterTankPage> {
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
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50),
                height: 320 - (320 * 40 / 100),
                width: 360,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(56, 59, 70, 1),
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 50),
                  height: 320,
                  width: 360,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(110, 133, 193, 0.3),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 20, left: 20),
                            child: const Icon(
                              Icons.menu,
                              color: Colors.white,
                              size: 26,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 25, left: 100),
                            child: const Text(
                              "Water Tank",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 25, left: 85),
                            child: const Icon(
                              Icons.info_outline,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 220, left: 30),
                        child: Row(
                          children: [
                            const GradientText(
                              "20%",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(255, 255, 255, 1),
                                Color.fromRGBO(255, 255, 255, 0)
                              ]),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 200),
                              child: const Text(
                                "Active",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
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
                      Icons.power_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "Motor Power.",
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
                        margin: const EdgeInsets.only(top: 16, left: 40),
                        child: const Text(
                          "OFF",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )),
                  )
                ],
              )),
          const SizedBox(
            height: 60,
          )
        ]),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
