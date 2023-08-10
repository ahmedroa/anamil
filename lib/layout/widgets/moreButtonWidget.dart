// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MoreButtonWidget extends StatelessWidget {
  const MoreButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          print('more');
        },
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 6),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'عرض المزيد',
                style: TextStyle(
                  color: Color(0xff1F348D),
                  fontSize: 12,
                ),
              ),
              SizedBox(width: 6),
              Icon(
                Icons.arrow_forward,
                color: Color(0xff1F348D),
                size: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
