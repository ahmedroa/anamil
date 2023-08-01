import 'package:anamil/constants/MyColors%20.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  final bool hasCircularBorder;
  final double width;

  const MainButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.hasCircularBorder = false,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width / 1.6,
        height: 50,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: MyColors.blue,
          ),
          child: MaterialButton(
            onPressed: onTap,
            child: Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
        ));
  }
}
