import 'package:anamil/constants/MyColors.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  final bool hasCircularBorder;
  final double width;
  final Color color;

  const MainButton(
      {Key? key,
      this.text = '',
      required this.onTap,
      this.hasCircularBorder = false,
      this.width = double.infinity,
      this.color = MyColors.blue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width / 1.6,
        height: 50,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: color,
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
