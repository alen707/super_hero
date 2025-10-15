import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:superhero_lexicon/provider/home_provider.dart';
import 'package:superhero_lexicon/provider/profile_provider.dart';
import 'package:superhero_lexicon/view/home_page.dart';

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
  // homeProvider=HomeProvider();

  @override
  void initState() {
    // homeProvider.homeProvider();
    // context.read<HomeProvider>().homeProvider();

    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home:
          //ProfilePage()
          //HomePage(),
          Loading(),
    );
  }
}

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
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
