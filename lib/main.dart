import 'package:flutter/material.dart';
import 'package:smarthome/devices/hvac.dart';
import 'package:smarthome/devices/light.dart';
import 'package:smarthome/devices/watertank.dart';
import 'package:smarthome/devices/window.dart';
import 'package:smarthome/home/home.dart';
import 'package:smarthome/home/uc.dart';
import 'package:smarthome/prelogin/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const WelcomePage(),
        '/home': (context) => const HomePage(),
        '/hvac': (context) => const HvacPage(),
        '/window': (context) => const WindowPage(),
        '/lights': (context) => const LightsPage(),
        '/waterTank': (context) => const WaterTankPage(),
        '/uc': (context) => const UcPage(),
      },
    );
  }
}
