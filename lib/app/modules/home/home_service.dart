import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:microblogging/app/shared/utils/snackbar.dart';

import 'models/post_model.dart';
import 'package:http/http.dart' as http;

class HomeService {
  Future<dynamic> getListNews(BuildContext context) async {
    try {
      Map<String, String> headers = {"Content-Type": "application/json"};

      String url = 'https://gb-mobile-app-teste.s3.amazonaws.com/data.json';

      var response = await http
          .get(Uri.parse(url), headers: headers)
          .timeout(const Duration(seconds: 60));

      String source = utf8.decode(response.bodyBytes);
      final jsonMap = jsonDecode(source);

      if (response.statusCode == 200) {
        final result = PostModel.fromJson(jsonMap);
        return result;
      } else {
        showSnackBar(
          context: context,
          message: jsonMap.toString(),
          color: Colors.red,
        );
      }
    } on TimeoutException catch (t) {
      showSnackBar(context: context, message: t.toString(), color: Colors.red);
    } on SocketException catch (s) {
      showSnackBar(context: context, message: s.toString(), color: Colors.red);
    } catch (c) {
      showSnackBar(context: context, message: c.toString(), color: Colors.red);
    }
  }
}
