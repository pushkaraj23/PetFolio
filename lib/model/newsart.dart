class NewsArt {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsContent;
  String newsUrl;

  NewsArt({
    required this.imgUrl,
    required this.newsHead,
    required this.newsDes,
    required this.newsContent,
    required this.newsUrl
  });

  static NewsArt fromApiToApp(Map<String, dynamic> article) {
    return NewsArt(
      imgUrl: article['urlToImage'] ?? "https://images.unsplash.com/photo-1444212477490-ca407925329e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2128&q=80",
      newsHead: article['title'] ?? '---',
      newsDes: article['description'] ?? '---',
      newsContent: article['content'] ?? '---',
      newsUrl: article['url'] ?? 'https://news.google.com/search?q=pets&hl=en-IN&gl=IN&ceid=IN%3Aen'
    );
  }
}