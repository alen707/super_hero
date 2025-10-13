import 'package:flutter/material.dart';
import 'package:superhero_lexicon/modal/info_modal.dart';

class BioHead extends StatefulWidget {
  final Map<String,dynamic> herodata; 
  const BioHead({
    super.key,
    required this.herodata
 
  });

  @override
  State<BioHead> createState() => _BioHeadState();
}

class _BioHeadState extends State<BioHead> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                widget.herodata["images"]["lg"]??"https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/images/sm/10-agent-bob.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
    
        Column(
          children: [
            Container(height: 250),
            Container(
              height: 250,
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
          ],
        ),
    
        SizedBox(
          height: 500,
          child: Column(
            children: [
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    widget.herodata['name']??"null",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
