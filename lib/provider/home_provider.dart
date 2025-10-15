import 'package:flutter/material.dart';
import 'package:superhero_lexicon/api/home_api.dart';
import 'package:superhero_lexicon/modal/info_modal.dart';

class HomeProvider extends ChangeNotifier {
  final homeApi = HomeApi();
  List<InfoModal> homepagedata = [];
  int introNum = 0;
  bool waiting = true;
  List<InfoModal> filtedList = [];

  void filterItem(query) {
    if (query != null) {
      final result = homepagedata
          .where(
            (info) =>
                info.name != null &&
                info.name!.toLowerCase().contains(query.toLowerCase()),
          )
          .toList();
      filtedList = result;
    } else {
      filtedList = homepagedata;
    }
    notifyListeners();
  }

  Future<void> getHomeinfo() async {
    waiting = true;
    homepagedata = await homeApi.homeApi();
    filtedList = homepagedata;

    waiting = false;
    notifyListeners();
  }
}
