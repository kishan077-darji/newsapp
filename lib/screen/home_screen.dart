import 'package:flutter/material.dart';
import 'package:news_app/controller/fetch_data.dart';
import 'package:news_app/model/news_art.dart';

import 'news_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late NewsArt newsArt;

  getNews() async {
    newsArt = await FetchNews.fetchNews();
    setState(() {});
  }

  @override
  void initState() {
    getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        onPageChanged: (value) {
          getNews();
        },
        itemBuilder: (context, index) {
          return NewsScreen(
            imgUrl: newsArt.imgUrl,
            newsDesc: newsArt.newsDesc,
            newsHeading: newsArt.newsHeading,
            newsUrl: newsArt.newsUrl,
            newsContent: newsArt.newsContent,
          );
        },
      ),
    );
  }
}
