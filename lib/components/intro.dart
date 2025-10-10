import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  const Intro({
    super.key,
  });

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        image: DecorationImage(
          
          image: NetworkImage("https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/images/md/1-a-bomb.jpg"),
          fit: BoxFit.cover
        
        
        ),
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20)
      ),
      width: 200, 
      height: 300, 
      
      child: Column(
        children: [
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: SizedBox(
              width: double.infinity,
              child: Text("Name",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25
              ),
              )
              ),
          ),
        ],
      )
      );
  }
}