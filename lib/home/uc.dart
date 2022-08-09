import 'package:flutter/material.dart';
import 'package:smarthome/components/bottomnavbar.dart';
import 'package:smarthome/components/gradienttext.dart';
import 'package:smarthome/components/menubutton.dart';

class UcPage extends StatefulWidget {
  const UcPage({Key? key}) : super(key: key);

  @override
  State<UcPage> createState() => _UcPageState();
}

class _UcPageState extends State<UcPage> {
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
            margin: const EdgeInsets.only(top: 200),
            child: Image.asset(
              "assets/img/UC.png",
              width: 150,
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
