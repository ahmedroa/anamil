// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:anamil/constants/Route.dart';
import 'package:anamil/layout/screens/categoriesScreen.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String name;
  final String image;

  const CategoryWidget({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          navigateTo(context, CategoriesScreen(category: name));
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 65 / 2,
              backgroundImage: AssetImage(image),
              backgroundColor: Colors.transparent,
            ),
            SizedBox(height: 5),
            Text(
              name,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
