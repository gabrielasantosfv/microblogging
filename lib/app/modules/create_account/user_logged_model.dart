import 'dart:convert' as convert;

import 'package:microblogging/app/modules/home/models/post_model.dart';
import 'package:microblogging/app/shared/utils/preferences.dart';

class UserLogged {
  User? user;

  UserLogged({this.user});

  UserLogged.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }

  factory UserLogged.fromMap(Map<String, dynamic> json) {
    return UserLogged(
      user: json['user'] != null ? User.fromJson(json['user']) : null,
    );
  }

  void save() {
    Map map = toJson();
    String json = convert.json.encode(map);
    Prefs.setString("user.prefs", json);
  }

  static Future<dynamic> get() async {
    String json = await Prefs.getString("user.prefs");
    if (json.isEmpty) {
      return null;
    }
    Map<String, dynamic> map = convert.json.decode(json);
    UserLogged user = UserLogged.fromMap(map);
    return user;
  }

  static void clear() {
    Prefs.setString("user.prefs", "");
  }
}
