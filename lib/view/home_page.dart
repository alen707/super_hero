import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:superhero_lexicon/shared/widget/intro.dart';
import 'package:superhero_lexicon/modal/repository/info_modal.dart';
import 'package:superhero_lexicon/viewmodal/provider/home_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool get waiting => context.watch<HomeProvider>().waiting;
  int get total => context.watch<HomeProvider>().introNum;

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<HomeProvider>().getHomeinfo();
  }

  @override
  Widget build(BuildContext context) {
    List<InfoModal> filtedList = context.watch<HomeProvider>().filtedList;
    return Scaffold(
      backgroundColor: Colors.black87,

      appBar: AppBar(
        automaticallyImplyLeading: false,
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
                controller: searchController,

                onChanged: (value) {
                  context.read<HomeProvider>().filterItem(value);
                },
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

      body: waiting
          ? SafeArea(child: Center(child: CircularProgressIndicator()))
          : SafeArea(
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                padding: EdgeInsets.all(10),
                childAspectRatio: .6,

                children: List.generate(filtedList.length, (index) {
                  final info = filtedList[index];
                  return Intro(
                    name: info.name ?? "unnoun",
                    image: info.images?.md ?? "",
                    id: info.id ?? 0,
                  );
                }),
              ),
            ),
    );
  }
}
