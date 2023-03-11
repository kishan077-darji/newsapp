import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart';
import 'package:news_app/model/news_art.dart';

class FetchNews {
  static List sourcesId = [
    "abc-news",
    "bbc-news",
    "bbc-sport",
    "business-insider",
    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",
    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",
    "medical-news-today",
    "national-geographic",
    "news24",
    "new-scientist",
    "new-york-magazine",
    "next-big-future",
    "techcrunch",
    "techradar",
    "the-hindu",
    "the-wall-street-journal",
    "the-washington-times",
    "time",
    "usa-today",
  ];
  static Future<NewsArt> fetchNews() async {
    final random = Random();
    var sourcesName = sourcesId[random.nextInt(sourcesId.length)];
    print(sourcesName);
    Response response = await get(
      Uri.parse(
          "https://newsapi.org/v2/top-headlines?sources=$sourcesName&apiKey=ce32567cccaf4073959c371241690edf"),
    );

    Map bodyData = jsonDecode(response.body);
    List articles = bodyData["articles"];

    var randomArticle = articles[random.nextInt(articles.length)];
    print(randomArticle);

    return NewsArt.fromApiToApp(randomArticle);
  }
}
