// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, use_key_in_widget_constructors

import 'package:anamil/constants/MyColors.dart';
import 'package:anamil/constants/Route.dart';
import 'package:anamil/layout/screens/details.dart';
import 'package:anamil/models/product.dart';
import 'package:flutter/material.dart';

class ProductBox extends StatefulWidget {
  final Product product;
  ProductBox({required this.product});

  @override
  State<ProductBox> createState() => _ProductBoxState();
}

class _ProductBoxState extends State<ProductBox> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2.2,
      height: MediaQuery.of(context).size.height / 3.7,
      child: Container(
        margin: EdgeInsets.all(4),
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
        child: Stack(
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () {
                navigateTo(context, Details());
              },
              child: Column(
                children: [
                  ClipRRect(
                    child: Image.asset(
                      widget.product.images[0],
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width / 2.2,
                      height: MediaQuery.of(context).size.height / 6,
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
                                widget.product.name,
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
                                widget.product.desc,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Color(0xFF929292),
                                    fontSize: 9,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              '${widget.product.price} ريال',
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
                  onPressed: () {
                    setState(() {
                      widget.product.changeIsFavorite();
                    });
                    print(widget.product.isFavorite);
                  },
                  child: Icon(
                    widget.product.isFavorite
                        ? Icons.favorite_rounded
                        : Icons.favorite_border_rounded,
                    size: 23,
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
