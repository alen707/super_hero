import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:superhero_lexicon/shared/widget/bio_circular_process.dart';
import 'package:superhero_lexicon/shared/widget/bio_discription.dart';
import 'package:superhero_lexicon/shared/widget/bio_head.dart';
import 'package:superhero_lexicon/shared/widget/bio_data.dart';
import 'package:superhero_lexicon/shared/widget/bio_title.dart';
import 'package:superhero_lexicon/modal/repository/info_modal.dart';
import 'package:superhero_lexicon/viewmodal/provider/profile_provider.dart';

class ProfilePage extends StatefulWidget {
  final int? id;
  const ProfilePage({super.key, required this.id});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Map<String, dynamic> profiledata = {};
  bool get profileWaiting => context.watch<ProfileProvider>().profileWaiting;

  @override
  void initState() {
    super.initState();
    context.read<ProfileProvider>().getHeroDetails(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    final profileProvider = context.watch<ProfileProvider>();
    InfoModal? heroData = profileProvider.heroData;

    return Scaffold(
      backgroundColor: Colors.black,
      body: profileWaiting
          ? SafeArea(child: Center(child: CircularProgressIndicator()))
          : SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BioHead(herodata: heroData),

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          BioTitle(title: "BIO"),

                          BioData(
                            title: "Name",
                            logo: 'assets/Icons/name.png',
                            data: heroData!.name,
                          ),
                          BioData(
                            title: "Full Name",
                            logo: 'assets/Icons/fullname.png',
                            data: heroData.biography!.fullName,
                          ),
                          BioData(
                            title: "Alter Ego",
                            logo: 'assets/Icons/alterego.png',
                            data: heroData.biography!.alterEgos,
                          ),
                          BioData(
                            title: "Place of Birth",
                            logo: 'assets/Icons/placeofbirth.png',
                            data: heroData.biography!.placeOfBirth,
                          ),
                          BioData(
                            title: "First Appearance",
                            logo: 'assets/Icons/first.png',
                            data: heroData.biography!.firstAppearance,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: BioData(
                                  title: "Publisher",
                                  logo: 'assets/Icons/publisher.png',
                                  data: heroData.biography!.publisher,
                                ),
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                flex: 2,
                                child: BioData(
                                  title: "Alignment",
                                  logo: 'assets/Icons/alignment.png',
                                  data: heroData.biography!.alignment,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 10),

                          BioTitle(title: "POWER STATS"),

                          SizedBox(height: 10),
                          GridView.count(
                            crossAxisCount: 3,
                            shrinkWrap: true,
                            mainAxisSpacing: 1,
                            crossAxisSpacing: 1,
                            padding: EdgeInsets.all(1),

                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              BioCircularProcess(
                                labal: "Intelligence",
                                reading: heroData.powerstats!.intelligence,
                              ),
                              BioCircularProcess(
                                labal: "Strength",
                                reading: heroData.powerstats!.strength,
                              ),
                              BioCircularProcess(
                                labal: "Speed",
                                reading: heroData.powerstats!.speed,
                              ),
                              BioCircularProcess(
                                labal: "Durability",
                                reading: heroData.powerstats!.durability,
                              ),
                              BioCircularProcess(
                                labal: "Power",
                                reading: heroData.powerstats!.power,
                              ),
                              BioCircularProcess(
                                labal: "Combat",
                                reading: heroData.powerstats!.combat,
                              ),
                            ],
                          ),

                          SizedBox(height: 10),

                          BioTitle(title: "ALIASES"),

                          SizedBox(height: 10),

                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: heroData.biography!.aliases!.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.yellow,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Text(
                                          heroData.biography!.aliases![index],
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),

                          SizedBox(height: 10),

                          BioTitle(title: "APPEARANCE"),

                          SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(
                                child: BioData(
                                  title: "Gender",
                                  logo: 'assets/Icons/gender.png',
                                  data: heroData.appearance!.gender,
                                ),
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                child: BioData(
                                  title: "Race",
                                  logo: 'assets/Icons/race.png',
                                  data: heroData.appearance!.race,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: BioData(
                                  title: "Height",
                                  logo: 'assets/Icons/height.png',
                                  data:
                                      "${heroData.appearance!.height![0]}\n${heroData.appearance!.height![1]}",
                                ),
                              ),
                              SizedBox(width: 8),

                              Expanded(
                                child: BioData(
                                  title: "Weight",
                                  logo: 'assets/Icons/weight.png',
                                  data:
                                      "${heroData.appearance!.weight![0]}\n${heroData.appearance!.weight![1]}",
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: BioData(
                                  title: "Eye Color",
                                  logo: 'assets/Icons/eye.png',
                                  data: heroData.appearance!.eyeColor,
                                ),
                              ),
                              SizedBox(width: 8),

                              Expanded(
                                child: BioData(
                                  title: "Hair Color",
                                  logo: 'assets/Icons/haircolor.png',
                                  data: "${heroData.appearance!.hairColor}",
                                ),
                              ),
                            ],
                          ),

                          Column(
                            children: [
                              BioDiscription(
                                title: "OCCUPATION",
                                data: heroData.work!.occupation,
                              ),
                              BioDiscription(
                                title: "BASE",
                                data: heroData.work!.base,
                              ),
                              BioDiscription(
                                title: "GROUP AFFILIATION",
                                data: heroData.connections!.groupAffiliation,
                              ),
                              BioDiscription(
                                title: "RELATIVES",
                                data: heroData.connections!.relatives,
                              ),
                            ],
                          ),
                          
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
