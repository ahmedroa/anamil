// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:anamil/layout/widgets/carouselWithIndicator.dart';
import 'package:flutter/material.dart';
import '../../layout/widgets/appbarSearchWidget.dart';
import '../../layout/widgets/categoryWidget.dart';
import '../../layout/widgets/productBox.dart';
import '../widgets/moreButtonWidget.dart';
import 'package:anamil/constants/images.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            AppbarSearchWidget(),
            CarouselWithIndicator(),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  CategoryWidget(),
                  CategoryWidget(),
                  CategoryWidget(),
                  CategoryWidget(),
                  CategoryWidget(),
                  CategoryWidget(),
                ],
              ),
            ),
            SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'الأعمال الحديثة',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      MoreButtonWidget(),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductBox(
                        product: 'product',
                        desc: 'desc',
                        image: Images.imageDemo1,
                        price: 12,
                      ),
                      ProductBox(
                        product: 'product',
                        desc: 'desc',
                        image: Images.imageDemo1,
                        price: 12,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'قد يعجبك',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      MoreButtonWidget(),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductBox(
                        product: 'product',
                        desc: 'desc',
                        image: Images.imageDemo1,
                        price: 12,
                      ),
                      ProductBox(
                        product: 'product',
                        desc: 'desc',
                        image: Images.imageDemo1,
                        price: 12,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
