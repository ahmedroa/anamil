// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:anamil/layout/screens/forYouScreen.dart';
import 'package:anamil/layout/screens/newProductsScreen.dart';
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
            SizedBox(height: 8),
            AppbarSearchWidget(),
            SizedBox(height: 8),
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
            SizedBox(height: 16),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'الأعمال الحديثة',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      MoreButtonWidget(
                        route: NewProductsScreen(),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductBox(
                        product: 'لوحة تشكيلية',
                        desc: 'باستخدام الألوان الزيتية مع لوح...',
                        image: Images.imageDemo1,
                        price: 218,
                      ),
                      ProductBox(
                        product: 'لوحة تشكيلية',
                        desc: 'باستخدام الألوان الزيتية مع لوح...',
                        image: Images.imageDemo1,
                        price: 218,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'قد يعجبك',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      MoreButtonWidget(
                        route: ForYouScreen(),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductBox(
                        product: 'لوحة تشكيلية',
                        desc: 'باستخدام الألوان الزيتية مع لوح...',
                        image: Images.imageDemo1,
                        price: 218,
                      ),
                      ProductBox(
                        product: 'لوحة تشكيلية',
                        desc: 'باستخدام الألوان الزيتية مع لوح...',
                        image: Images.imageDemo1,
                        price: 218,
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
