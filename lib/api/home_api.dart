import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:superhero_lexicon/modal/info_modal.dart';

class HomeApi {
  final String homeUrlApi =
      "https://rpbujz13zl.execute-api.us-east-1.amazonaws.com/default/superhero-lexicon/heroes";
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
