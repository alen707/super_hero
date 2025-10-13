import 'package:flutter/material.dart';
import 'package:superhero_lexicon/api/profile_api.dart';
import 'package:superhero_lexicon/modal/info_modal.dart';

class ProfileProvider extends ChangeNotifier {
  // List<InfoModal>? profilepagedata;
  Map<String, dynamic>? heroData;
  final profileApi = ProfileApi();

  Future<void> getHeroDetails() async {
    print("profileProvider");
    print("profileProvider");
    print("profileProvider");
    print("profileProvider");
    print("profileProvider");
    print("profileProvider");

    heroData = await profileApi.getHeroDetails();
    print("vaaaaaa");
    print("vaaaaaa");
    print("vaaaaaa");
    print(heroData);
    print("vaaaaaa");
    print("vaaaaaa");
    print("vaaaaaa");
    notifyListeners();
  }
}
