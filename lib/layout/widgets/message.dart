import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

message({
  required String message,
  required Color color,
}) =>
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: color,
      textColor: Colors.white,
      fontSize: 16.0,
    );
