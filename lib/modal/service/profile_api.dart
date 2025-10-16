import 'dart:convert' ;
import 'package:http/http.dart' as http;
import 'package:superhero_lexicon/core/urls.dart';
import 'package:superhero_lexicon/modal/repository/info_modal.dart';

class ProfileApi {
  final link=Urls();
   String get profileUrlApi =>
      "${link.mainUrls}/${link.profilepageUrls}";

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
