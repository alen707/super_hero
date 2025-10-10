import 'package:flutter/material.dart';
import 'package:superhero_lexicon/components/intro.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        title: Text(
          "Explore",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.yellow,
          ),
        ),
        backgroundColor: Colors.black,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(75),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.yellow),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search heroes...",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 25),
                  prefixIcon: Icon(Icons.search, size: 30, color: Colors.white),
                ),
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ),
      ),

      body: SafeArea(
        child: Column(
          children: [Intro()],
        ),
      ),
    );
  }
}


