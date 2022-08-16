import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

void showSnackBar({
  required BuildContext context,
  required String message,
  required Color color,
  int duration = 3,
}) {
  Flushbar(
    message: message,
    backgroundColor: color,
    duration: Duration(seconds: duration),
  ).show(context);
}
