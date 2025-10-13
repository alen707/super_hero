import 'package:flutter/material.dart';

class BioTitle extends StatelessWidget {
  final String? title;
  const BioTitle({
    super.key,
    this.title
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        title??"null",
        style: TextStyle(
          color: Colors.yellow,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

