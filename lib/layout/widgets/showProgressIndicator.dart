import 'package:anamil/constants/MyColors%20.dart';
import 'package:flutter/material.dart';

void showProgressIndicator(context) {
  showDialog(
    barrierColor: Colors.white.withOpacity(0),
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return const Center(
          child: CircularProgressIndicator(
        color: MyColors.blue,
      ));
    },
  );
}
