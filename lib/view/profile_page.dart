import 'package:flutter/material.dart';
import 'package:superhero_lexicon/components/bio_list.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 500,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/images/lg/1-a-bomb.jpg",
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
                            "name",
                            style: TextStyle(color: Colors.white, fontSize: 35),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "BIO",
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  BioItem(),
                  BioItem(),
                  BioItem(),
                  BioItem(),
                  BioItem(),
 

                  Row(
                    children: [
                      Expanded(flex: 3, child:  BioItem(),),
                      SizedBox(width: 8),
                      Expanded(flex: 2, child:  BioItem(),),
                    ],
                  ),

                  SizedBox(height: 10),

                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "POWER STATS",
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // Container(
                  //   width: 90,
                  //   height: 90,
                  //   child: CircularProgressIndicator(
                  //     value: 0.5,
                  //     strokeWidth: 100,
                  //     backgroundColor: const Color.fromARGB(255, 47, 59, 41),
                  //     valueColor: AlwaysStoppedAnimation<Color>(const Color.fromARGB(255, 238, 237, 236)),
                  //   ),
                  // )





                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
