// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppbarSearchWidget extends StatelessWidget {
  const AppbarSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.3,
            height: 42,
            child: TextField(
              cursorColor: Color(0xffCECECE),
              style: TextStyle(
                color: Color(0xffCECECE),
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
              decoration: InputDecoration(
                prefixIcon: IconButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onPressed: () {
                    print('search button');
                  },
                  icon: Icon(
                    Icons.search,
                    size: 24,
                    color: Color(0xffCECECE),
                    weight: 300,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Color(0xffCECECE)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Color(0xffCECECE)),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 12, vertical: 9),
                hintText: 'ابحث عن اللوحات، الفنانين، ...',
                hintStyle: TextStyle(
                  color: Color(0xffCECECE),
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          IconButton(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onPressed: () {
              print('icon button for filter');
            },
            icon: Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: Color(0xff1F348D),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                  size: 18, Icons.filter_list_rounded, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
