import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart';
import 'package:petfolio/model/newsart.dart';

class FetchNews {
  static Future<NewsArt> fetchNews() async {
    Response response = await get(Uri.parse('https://newsapi.org/v2/everything?q=animal&from=2023-03-25&sortBy=publishedAt&apiKey=036010638e164890a5ec95ba8e7f0e03'));
    Map bodyData = jsonDecode(response.body);
    List articles = bodyData["articles"];

    final _newRandom = new Random();
    var myArticle = articles[_newRandom.nextInt(articles.length)];
    print(myArticle);

    return NewsArt.fromApiToApp(myArticle);
  }
}