class Articles {
  String? title;
  String? publishedAt;
  String? urlToImage;
  String? url;
  Articles({
    this.title,
    this.publishedAt,
    this.urlToImage,
    this.url,
  });

  Articles.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    publishedAt = json['publishedAt'];
    urlToImage = json['urlToImage'];
    url = json['url'];
  }
}

class NewsModel {
  List<Articles>? articles;
  NewsModel({
    this.articles,
  });

  NewsModel.fromJson(Map<String, dynamic> json) {
    articles =
        (json['articles'] as List).map((e) => Articles.fromJson(e)).toList();
  }
}
