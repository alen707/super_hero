import 'package:flutter/material.dart';
import 'package:superhero_lexicon/modal/info_modal.dart';
import 'package:superhero_lexicon/view/profile_page.dart';

class Intro extends StatefulWidget {
  final String name;
  final String image;
  final int id;
  
  const Intro({
    super.key,
     required this.name,
      required this.image,
      required this.id,
      
  });

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfilePage(
 
            
            )),
        );
      },
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  widget.image,
                ),
                fit: BoxFit.cover,
              ),
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            width: 200,
            height: 300,
          ),

          Column(
            children: [
              Expanded(child: Container(height: double.infinity)),
              Expanded(
                child: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        // ignore: deprecated_member_use
                        Colors.black.withOpacity(1),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          Column(
            children: [
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    widget.name,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
