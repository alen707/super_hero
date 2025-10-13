import 'package:flutter/material.dart';
import 'package:superhero_lexicon/api/home_api.dart';
import 'package:superhero_lexicon/modal/info_modal.dart';

class HomeProvider extends ChangeNotifier{

  final homeApiCall=HomeApi();
  List<InfoModal>? homepagedata;
   int introNum=0;

  Future<void>homeProvider() async{

  homepagedata=await homeApiCall.homeApi();
   //print(homepagedata);
   introNum=homepagedata?.length??0;

  notifyListeners();

  }
}