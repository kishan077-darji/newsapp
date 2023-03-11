class NewsArt {
  String imgUrl;
  String newsHeading;
  String newsDesc;
  String newsContent;
  String newsUrl;

  NewsArt({
    required this.imgUrl,
    required this.newsHeading,
    required this.newsDesc,
    required this.newsContent,
    required this.newsUrl,
  });

  static fromApiToApp(Map<String, dynamic> artical) {
    return NewsArt(
      imgUrl: artical["urlToImage"] ??
          "https://img.freepik.com/free-vector/breaking-news-concept_23-2148514216.jpg?w=996&t=st=1678454115~exp=1678454715~hmac=d0d893fbd1e154fe868478ee8266bd3d768acdb2068bc1a0804ae5761ac86967",
      newsHeading: artical["title"] ?? "--",
      newsDesc: artical["description"] ?? "--",
      newsContent: artical["content"] ?? "--",
      newsUrl: artical["url"] ??
          "https://img.freepik.com/premium-vector/404-error-web-sign_251840-388.jpg?w=826",
    );
  }
}
