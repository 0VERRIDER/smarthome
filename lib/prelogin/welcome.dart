import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(42, 45, 54, 1),
      child: Column(children: [
        Container(
            margin: const EdgeInsets.only(top: 200),
            child: Image.asset("assets/img/SHLOGO.png")),
        Container(
            margin: const EdgeInsets.only(top: 300),
            width: 360,
            height: 75,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: const Color.fromRGBO(110, 133, 193, 1)),
                onPressed: () => {Navigator.popAndPushNamed(context, "/home")},
                child: const Text("GET STARTED"))),
        Container(
          width: 250,
          margin: const EdgeInsets.only(top: 20),
          child: const Text(
            "By continuing, You are agreeing to our Terms and Conditions.",
            style: TextStyle(
                color: Color.fromARGB(123, 255, 255, 255),
                fontSize: 9,
                decoration: TextDecoration.none,
                height: 1.8,
                fontWeight: FontWeight.w300),
            textAlign: TextAlign.center,
          ),
        )
      ]),
    );
  }
}
