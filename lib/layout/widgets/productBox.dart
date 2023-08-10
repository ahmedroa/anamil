// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, use_key_in_widget_constructors

import 'package:anamil/constants/MyColors%20.dart';
import 'package:flutter/material.dart';

class ProductBox extends StatelessWidget {
  final String product;
  final String desc;
  final String image;
  final double price;
  const ProductBox({
    required this.product,
    required this.desc,
    required this.image,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2.2,
      height: MediaQuery.of(context).size.height / 3,
      child: Card(
        elevation: 4,
        shadowColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () {},
              child: Column(
                children: [
                  ClipRRect(
                    child: Image.asset(
                      image,
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: SizedBox(
                              width: 100,
                              child: Text(
                                product,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: SizedBox(
                              width: 120,
                              child: Text(
                                desc,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Color(0xFF929292),
                                    fontSize: 8,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              '$price ريال',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 6,
              left: 6,
              child: SizedBox(
                width: 26,
                height: 26,
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  hoverElevation: 0,
                  highlightElevation: 0,
                  elevation: 0,
                  onPressed: () {},
                  child: Icon(
                    Icons.favorite_border,
                    size: 20,
                    color: MyColors.blue,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
