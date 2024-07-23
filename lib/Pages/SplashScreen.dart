import 'dart:async';

import 'package:flutter/material.dart';
import 'package:online_shop/Pages/HomeScreen.dart';
import 'package:online_shop/Pages/navigation_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 7), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => NavigationScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/1.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 20.0, left: 10, top: 50),
              child: Text(
                "LIVE YOUR PERFECT",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 45.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Smart, gorgeous & fasionable collection makes you cool",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            //   const SizedBox(height: 70,),
            Padding(
              padding: const EdgeInsets.only(bottom: 30, top: 80),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  )),
            )
          ],
        ),
      )),
    );

    //  SafeArea(
    //   child: Scaffold(
    //     body: Container(
    //       decoration: const BoxDecoration(
    //           image: DecorationImage(
    //               image: AssetImage("images/1.jpg"), fit: BoxFit.cover)),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [Text("LIVE YOUR PROJECT")],
    //       ),
    //     ),
    //   ),
    // );
  }
}
