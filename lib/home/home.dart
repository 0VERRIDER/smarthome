import 'package:flutter/material.dart';
import 'package:smarthome/components/bottomnavbar.dart';

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
      body: Container(),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
