// // import 'dart:convert';

// // List<Post> postFromJson(String str) =>
// //     List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

// // String postToJson(List<Post> data) =>
// //     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// // class Post {
// //   Post({
// //     required this.symbol,
// //     required this.name,
// //     required this.image,
// //     required this.currentPrice,
// //     required this.priceChange24H,
// //     required this.priceChangePercentage24H,
// //   });

// //   String symbol;
// //   String name;
// //   String image;
// //   String currentPrice;

// //   double priceChange24H;
// //   double priceChangePercentage24H;

// //   factory Post.fromJson(Map<String, dynamic> json) => Post(
// //         symbol: json["symbol"],
// //         name: json["name"],
// //         image: json["image"],
// //         priceChange24H: json["price_change_24h"].toDouble(),
// //         priceChangePercentage24H:
// //             json["price_change_percentage_24h"].toDouble(),
// //         currentPrice: json["current_price"].toString(),
// //       );

// //   Map<String, dynamic> toJson() => {
// //         "symbol": symbol,
// //         "name": name,
// //         "image": image,
// //         "current_price": currentPrice,
// //         "price_change_24h": priceChange24H,
// //         "price_change_percentage_24h": priceChangePercentage24H,
// //         "current_price": currentPrice,
// //       };
// // }

// // List<Article> FromJson(String str) =>
// //     List<Article>.from(json.decode(str).map((x) => Article.fromJson(x)));

// // String ToJson(List<Article> data) =>
// //     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// // class Article {
// //   Article({
// //     required this.author,
// //     required this.title,
// //     required this.description,
// //     required this.url,
// //     required this.urlToImage,
// //     required this.publishedAt,
// //     required this.content,
// //   });

// //   String author;
// //   String title;
// //   String description;
// //   String url;
// //   String urlToImage;
// //   DateTime publishedAt;
// //   String content;

// //   factory Article.fromJson(Map<String, dynamic> json) => Article(
// //         author: json["author"],
// //         title: json["title"],
// //         description: json["description"],
// //         url: json["url"],
// //         urlToImage: json["urlToImage"],
// //         publishedAt: DateTime.parse(json["publishedAt"]),
// //         content: json["content"],
// //       );

// //   Map<String, dynamic> toJson() => {
// //         "author": author,
// //         "title": title,
// //         "description": description,
// //         "url": url,
// //         "urlToImage": urlToImage,
// //         "publishedAt": publishedAt.toIso8601String(),
// //         "content": content,
// //       };
// // }
// // To parse this JSON data, do
// //
// //     final news = newsFromJson(jsonString);

// // import 'dart:convert';

// News newsFromJson(String str) => News.fromJson(json.decode(str));

// class News {
//   News({
//     required this.articles,
//   });

//   List<Article> articles;

//   factory News.fromJson(Map<String, dynamic> json) => News(
//         articles: List<Article>.from(
//             json["articles"].map((x) => Article.fromJson(x))),
//       );
// }

// class Article {
//   Article({
//     required this.author,
//     required this.title,
//     required this.description,
//     required this.url,
//     required this.urlToImage,
//     required this.publishedAt,
//     required this.content,
//   });

//   String author;
//   String title;
//   String description;
//   String url;
//   String urlToImage;
//   DateTime publishedAt;
//   String content;

//   factory Article.fromJson(Map<String, dynamic> json) => Article(
//         author: json["author"],
//         title: json["title"],
//         description: json["description"],
//         url: json["url"],
//         urlToImage: json["urlToImage"],
//         publishedAt: DateTime.parse(json["publishedAt"]),
//         content: json["content"],
//       );
// }

import 'package:meta/meta.dart';
import 'dart:convert';

Api apiFromJson(String str) => Api.fromJson(json.decode(str));

class Api {
  Api({
    required this.count,
    required this.entries,
  });

  int count;
  List<Entry> entries;

  factory Api.fromJson(Map<String, dynamic> json) => Api(
        count: json["count"],
        entries:
            List<Entry>.from(json["entries"].map((x) => Entry.fromJson(x))),
      );
}

class Entry {
  Entry({
    required this.api,
    required this.description,
    required this.https,
    required this.link,
    required this.category,
  });

  String api;
  String description;

  bool https;

  String link;
  String category;

  factory Entry.fromJson(Map<String, dynamic> json) => Entry(
        api: json["API"],
        description: json["Description"],
        https: json["HTTPS"],
        link: json["Link"],
        category: json["Category"],
      );

  Map<String, dynamic> toJson() => {
        "API": api,
        "Description": description,
        "HTTPS": https,
        "Link": link,
        "Category": category,
      };
}
