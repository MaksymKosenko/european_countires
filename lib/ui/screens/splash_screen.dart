import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void navigateToHomePage() {
      Timer(Duration(seconds: 5), () {
        Navigator.popAndPushNamed(context, "/Home");
      });
    }

    navigateToHomePage();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(radius: 110, backgroundColor: Colors.white,),
            SizedBox(height: 20,),
            Text("Earth globe")
          ],
        ),
      ),
    );
  }
}
