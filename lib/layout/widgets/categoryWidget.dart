// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:anamil/constants/images.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          print('category widget');
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 75 / 2,
              backgroundImage: AssetImage(Images.imageDemo1),
              backgroundColor: Colors.transparent,
            ),
            SizedBox(height: 5),
            Text(
              'لوحات',
              style: TextStyle(fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
