import 'dart:convert' show jsonDecode, json;
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:superhero_lexicon/modal/info_modal.dart';

class ProfileApi {
  final String profileUrl =
      "https://rpbujz13zl.execute-api.us-east-1.amazonaws.com/default/superhero-lexicon/heroes";
  //Future<List<InfoModal>> profileApi() async {
  Future<Map<String, dynamic>> getHeroDetails() async {
    final response = await http.get(Uri.parse('$profileUrl/1'));
    if (response.statusCode == 200) {
      // List<dynamic> data = jsonDecode(response.body);
      //return data.map((e) => InfoModal.fromJson(e)).toList();
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      return {};
    }
  }
}
