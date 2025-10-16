import 'package:flutter/material.dart';
import 'package:superhero_lexicon/modal/service/profile_api.dart';
import 'package:superhero_lexicon/modal/repository/info_modal.dart';

class ProfileProvider extends ChangeNotifier {
  
  InfoModal? heroData;
  final profileApi = ProfileApi();
  bool profileWaiting=true;

  Future<void> getHeroDetails(int? id) async {
    profileWaiting=true;
    heroData = await profileApi.getHeroDetails(id);
    profileWaiting=false;
    notifyListeners();
  }
}
