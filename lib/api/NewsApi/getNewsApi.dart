import 'package:edusync/model/newsModel.dart';
import 'package:edusync/utils/constants.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class NewsGetApi {
  //Future
  static Future<NewsModel?>? getnewsdata() async {
    //try catch
    try {
      //http calls
      var url = Uri.https(Constant.baseUrl, '/v2/everything',
          {'domains': 'wsj.com', "appKey": Constant.baseUrl});

      // Await the http get response, then decode the json-formatted response.
      var response = await http.get(url);
      var jsonResponse = convert.jsonDecode(response.body);
      NewsModel data = NewsModel.fromJson(jsonResponse);
      return data;
    } catch (e) {
      return null;
    }
  }
}
