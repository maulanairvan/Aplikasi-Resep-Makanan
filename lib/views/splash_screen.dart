import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:resep_makanan/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => MyHomePage(
                      title: "",
                    ))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 129, 192, 236),
              Color.fromARGB(255, 83, 2, 214),
              Color.fromARGB(209, 236, 209, 39),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  "Aplikasi Resep Makanan",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
                Image.asset(
                  "assets/images/logo_unesa.png",
                  height: 200.0,
                  width: 200.0,
                ),
                Image.asset(
                  "assets/icon/LOGO1.png",
                  height: 200.0,
                  width: 200.0,
                ),
                Text("Fathia Bilqish - 22050974082"),
                Text("Savana Putra Aditama - 22050974100"),
                Text("Amanda Rizki Putri - 22050974101"),
                Text("Irvan Maulana - 22050974107"),
                Text("Kayla Syva - 22050974115")
              ],
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
