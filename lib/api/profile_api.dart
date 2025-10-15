import 'dart:convert' ;


import 'package:http/http.dart' as http;
import 'package:superhero_lexicon/modal/info_modal.dart';

class ProfileApi {
  final String profileUrlApi =
      "https://rpbujz13zl.execute-api.us-east-1.amazonaws.com/default/superhero-lexicon/heroes";

  Future<InfoModal> getHeroDetails(int? id) async {
    final response = await http.get(Uri.parse('$profileUrlApi/$id'));
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return InfoModal.fromJson(data);
    } else {
      return InfoModal.fromJson({});
    }
  }
}
