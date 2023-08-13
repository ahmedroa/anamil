// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:anamil/layout/screens/forYouScreen.dart';
import 'package:anamil/layout/screens/newProductsScreen.dart';
import 'package:anamil/layout/widgets/carouselWithIndicator.dart';
import 'package:anamil/models/product.dart';
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
                  CategoryWidget(name: 'كروشية', image: Images.imgDemo2),
                  CategoryWidget(name: 'لوحات', image: Images.imgDemo9),
                  CategoryWidget(name: 'خزف', image: Images.imgDemo13),
                  CategoryWidget(name: 'منسوجات', image: Images.imgDemo12),
                  CategoryWidget(name: 'لوحات مائية', image: Images.imgDemo10),
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
                        product: Product(
                          images: [Images.imgDemo9],
                          details: [],
                          category: '',
                        ),
                      ),
                      ProductBox(
                        product: Product(
                          images: [Images.imgDemo8],
                          details: [],
                          category: '',
                        ),
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
                        product: Product(
                          images: [Images.imgDemo3],
                          details: [],
                          category: '',
                        ),
                      ),
                      ProductBox(
                        product: Product(
                          images: [Images.imgDemo4],
                          details: [],
                          category: '',
                        ),
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
