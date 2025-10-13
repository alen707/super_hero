import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:superhero_lexicon/components/intro.dart';
import 'package:superhero_lexicon/modal/info_modal.dart';
import 'package:superhero_lexicon/provider/home_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
 
class _HomePageState extends State<HomePage> {
//  int total=0;
// Future<void> first() async{
//   total =  await context.watch<HomeProvider>().introNum;
// }
  int get total => context.watch<HomeProvider>().introNum;
   get infodata => context.watch<HomeProvider>().homepagedata;

  



  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,

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
        child: GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          padding: EdgeInsets.all(10),
          childAspectRatio: .6,

          children: List.generate(total, (index) {
            // print("total");
            // print(total);
            // print(total);
            // print(total);
            // print(total);
          
            return Intro(
              name: infodata[index].name,
              image: infodata[index].images?.md,
              id: infodata[index].id,
              

            );
          }),
        ),
      ),
    );
  }
}
