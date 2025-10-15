import 'package:flutter/material.dart';

class BioDiscription extends StatefulWidget {
  final String? data;
  final String title;
  const BioDiscription({super.key, required this.title, required this.data});

  @override
  State<BioDiscription> createState() => _BioDiscriptionState();
}

class _BioDiscriptionState extends State<BioDiscription> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),

        SizedBox(
          width: double.infinity,
          child: Text(
            widget.title,
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        SizedBox(height: 10),

        SizedBox(
          width: double.infinity,
          child: Text(
            widget.data ?? "null",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
