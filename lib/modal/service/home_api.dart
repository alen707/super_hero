import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:superhero_lexicon/core/urls.dart';
import 'package:superhero_lexicon/modal/repository/info_modal.dart';

class HomeApi {
  final link=Urls();
   String get homeUrlApi =>
      "${link.mainUrls}/${link.homepageUrls}";
  Future<List<InfoModal>> homeApi() async {
    final response = await http.get(Uri.parse(homeUrlApi));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((e) => InfoModal.fromJson(e)).toList();
    } else {
      return [];
    }
  }
}
