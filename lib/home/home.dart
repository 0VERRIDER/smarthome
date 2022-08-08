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
          ),
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
            ),
          ]),
          Container(
            margin: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 180,
                  height: 220,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(56, 59, 70, 1),
                  ),
                ),
                Container(
                  width: 180,
                  height: 220,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(56, 59, 70, 1),
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
