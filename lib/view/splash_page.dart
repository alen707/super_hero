
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:superhero_lexicon/view/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _LoadingState();
}

class _LoadingState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () => Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (_) => HomePage())),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/role-model.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
