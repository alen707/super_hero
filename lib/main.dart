import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:superhero_lexicon/provider/home_provider.dart';
import 'package:superhero_lexicon/provider/profile_provider.dart';
import 'package:superhero_lexicon/view/home_page.dart';
import 'package:superhero_lexicon/view/profile_page.dart';

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
    context.read<HomeProvider>().homeProvider();

    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home:
          //ProfilePage()
          HomePage(),
    );
  }
}
