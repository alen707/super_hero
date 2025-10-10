import 'package:flutter/material.dart';
import 'package:superhero_lexicon/view/home_page.dart';
import 'package:superhero_lexicon/view/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    
      home:
      ProfilePage()
      // HomePage(),
    );
  }
}

