import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:superhero_lexicon/components/bio_circular_process.dart';
import 'package:superhero_lexicon/components/bio_discription.dart';
import 'package:superhero_lexicon/components/bio_head.dart';
import 'package:superhero_lexicon/components/bio_ltem.dart';
import 'package:superhero_lexicon/components/bio_title.dart';
import 'package:superhero_lexicon/modal/info_modal.dart';
import 'package:superhero_lexicon/provider/home_provider.dart';
import 'package:superhero_lexicon/provider/profile_provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
   Map<String,dynamic> profiledata={};


   
  @override
  void initState() {
    super.initState();
    context.read<ProfileProvider>().getHeroDetails();

    // TODO: implement initState
    // fetchProfile();
  }
 

  // Future<void> fetchProfile() async {
  //   final profileinfoprovider = Provider.of<ProfileProvider>(
  //     context,
  //     listen: false,
  //   );
  //   await profileinfoprovider.getHeroDetails();
  // }

  //get infodata => context.watch<HomeProvider>().homepagedata;
  // get prodiledata => context.watch<ProfileProvider>().profilepagedata;

  @override
  Widget build(BuildContext context) {


    final profileProvider = context.watch<ProfileProvider>();
    Map<String, dynamic> heroData = profileProvider.heroData ?? {};

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BioHead(herodata:heroData),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    BioTitle(title: "BIO"),

                    BioItem(title: "Name", logo: 'assets/Icons/name.png',
                    data: heroData["name"],),
                    BioItem(
                      title: "Full Name",
                      logo: 'assets/Icons/fullname.png',
                      data: heroData["biography"]["fullName"],
                      
                    ),
                    BioItem(
                      title: "Alter Ego",
                      logo: 'assets/Icons/alterego.png',
                    ),
                    BioItem(
                      title: "Place of Birth",
                      logo: 'assets/Icons/placeofbirth.png',
                    ),
                    BioItem(
                      title: "First Appearance",
                      logo: 'assets/Icons/first.png',
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: BioItem(
                            title: "Publisher",
                            logo: 'assets/Icons/publisher.png',
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          flex: 2,
                          child: BioItem(
                            title: "Alignment",
                            logo: 'assets/Icons/alignment.png',
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
                        BioCircularProcess(labal: "Intelligence"),
                        BioCircularProcess(labal: "Strength"),
                        BioCircularProcess(labal: "Speed"),
                        BioCircularProcess(labal: "Durability"),
                        BioCircularProcess(labal: "Power"),
                        BioCircularProcess(labal: "Combat"),
                      ],
                    ),

                    SizedBox(height: 10),

                    BioTitle(title: "ALIASES"),

                    SizedBox(height: 10),

                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "NAME NAME",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 10),

                    BioTitle(title: "APPEARANCE"),

                    SizedBox(height: 10),
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      padding: EdgeInsets.all(1),
                      childAspectRatio: 2,

                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        BioItem(
                          title: "gender",
                          logo: 'assets/Icons/gender.png',
                        ),
                        BioItem(title: "Race", logo: 'assets/Icons/race.png'),
                        BioItem(
                          title: "Heigth",
                          logo: 'assets/Icons/height.png',
                        ),
                        BioItem(
                          title: "Weight",
                          logo: 'assets/Icons/weight.png',
                        ),
                        BioItem(
                          title: "Eye Color",
                          logo: 'assets/Icons/eye.png',
                        ),
                        BioItem(
                          title: "Hair Color",
                          logo: 'assets/Icons/haircolor.png',
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        BioDiscription(title: "OCCUPATION"),
                        BioDiscription(title: "BASE"),
                        BioDiscription(title: "GROUP AFFILIATION"),
                        BioDiscription(title: "RELATIVES"),
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
