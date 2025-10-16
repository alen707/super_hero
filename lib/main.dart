import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:superhero_lexicon/view/splash_page.dart';
import 'package:superhero_lexicon/viewmodal/provider/home_provider.dart';
import 'package:superhero_lexicon/viewmodal/provider/profile_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        ChangeNotifierProvider(create: (_) => ProfileProvider()),
      ],

      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashPage());
  }
}
