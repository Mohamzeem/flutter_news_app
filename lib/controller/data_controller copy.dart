import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../model/news_model.dart';

class DataController extends GetxController {
  Future getData(String myUrl) async {
    String url = myUrl;
    // 'https://newsapi.org/v2/everything?q=$search&sortBy=publishedAt&apiKey=93242bc15d3b4c2798e5a5b2f6621601'
    // 'https://newsapi.org/v2/top-headlines?country=eg&category=$category&apiKey=93242bc15d3b4c2798e5a5b2f6621601';
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      try {
        return NewsModel.fromJson(jsonDecode(response.body));
      } catch (e) {
        Get.snackbar('Can not load data', e.toString());
      }
    }
  }
}
