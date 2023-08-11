import 'package:flutter/material.dart';
import 'package:anamil/constants/MyColors.dart';

class SafeAreaWidth extends StatelessWidget {
  final Widget child;

  const SafeAreaWidth({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.blue,
      child: SafeArea(
        child: child,
      ),
    );
  }
}
