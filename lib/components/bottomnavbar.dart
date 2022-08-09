import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(56, 59, 70, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(bottom: 40, left: 20, right: 20),
      height: 75,
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              onPressed: () => {Navigator.pushNamed(context, '/home')},
              icon: const Icon(Icons.home_outlined),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () => {Navigator.pushNamed(context, "/uc")},
              icon: const Icon(Icons.flash_on),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () => {Navigator.pushNamed(context, "/uc")},
              icon: const Icon(Icons.person_outlined),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () => {Navigator.pushNamed(context, "/uc")},
              icon: const Icon(Icons.settings_outlined),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
