class PostModel {
  List<News>? news;

  PostModel({this.news});

  PostModel.fromJson(Map<String, dynamic> json) {
    if (json['news'] != null) {
      news = <News>[];
      json['news'].forEach((v) {
        news!.add(News.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (news != null) {
      data['news'] = news!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class News {
  int? id;
  User? user;
  Message? message;

  News({this.id, this.user, this.message});

  News.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    message =
        json['message'] != null ? Message.fromJson(json['message']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (user != null) {
      data['user'] = user!.toJson();
    }
    if (message != null) {
      data['message'] = message!.toJson();
    }
    return data;
  }
}

class User {
  late String name;
  late String profilePicture;
  late dynamic verified;

  User(
      {required this.name,
      required this.profilePicture,
      required this.verified});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    profilePicture = json['profile_picture'];
    verified = json['verified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['profile_picture'] = profilePicture;
    data['verified'] = verified;

    return data;
  }
}

class Message {
  late String content;
  late String createdAt;
  late dynamic numberLikes;
  late dynamic numberComments;
  late dynamic liked;

  Message({
    required this.content,
    required this.createdAt,
    required this.numberLikes,
    required this.numberComments,
    required this.liked,
  });

  Message.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    createdAt = json['created_at'];
    numberLikes = json['number_likes'];
    numberComments = json['number_comments'];
    liked = json['liked'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['content'] = content;
    data['created_at'] = createdAt;
    data['number_likes'] = numberLikes;
    data['number_comments'] = numberComments;
    data['liked'] = liked;
    return data;
  }
}
