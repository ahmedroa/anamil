// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/productBox.dart';

var products = [
  ProductBox(
    product: 'اسم المنتج المنتج المنتج المنتج المنتج المنتج المنتج',
    desc: 'وصف وصف  وصف وصفوصفوصف وصف وصف وصف وصف وصف وصف وصف',
    image: 'assets/images/image1.jpg',
    price: 200.18,
  ),
  ProductBox(
    product: 'اسم المنتج المنتج المنتج المنتج المنتج المنتج المنتج',
    desc: 'وصف وصف  وصف وصفوصفوصف وصف وصف وصف وصف وصف وصف وصف',
    image: 'assets/images/image1.jpg',
    price: 200.18,
  ),
  ProductBox(
    product: 'اسم المنتج المنتج المنتج المنتج المنتج المنتج المنتج',
    desc: 'وصف وصف  وصف وصفوصفوصف وصف وصف وصف وصف وصف وصف وصف',
    image: 'assets/images/image1.jpg',
    price: 200.18,
  ),
  ProductBox(
    product: 'اسم المنتج المنتج المنتج المنتج المنتج المنتج المنتج',
    desc: 'وصف وصف  وصف وصفوصفوصف وصف وصف وصف وصف وصف وصف وصف',
    image: 'assets/images/image1.jpg',
    price: 200.18,
  ),
  ProductBox(
    product: 'اسم المنتج المنتج المنتج المنتج المنتج المنتج المنتج',
    desc: 'وصف وصف  وصف وصفوصفوصف وصف وصف وصف وصف وصف وصف وصف',
    image: 'assets/images/image1.jpg',
    price: 200.18,
  ),
  ProductBox(
    product: 'اسم المنتج المنتج المنتج المنتج المنتج المنتج المنتج',
    desc: 'وصف وصف  وصف وصفوصفوصف وصف وصف وصف وصف وصف وصف وصف',
    image: 'assets/images/image1.jpg',
    price: 200.18,
  ),
];

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView(
        padding: EdgeInsets.all(10),
        physics: BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 170,
          mainAxisExtent: 237,
          // width / height of element
          // childAspectRatio: 170 / 207,
          // gap between elements (horizontal)
          mainAxisSpacing: 10,
          // gap between elements (vertical)
          crossAxisSpacing: 10,
        ),
        children: products
            .map(
              (product) => ProductBox(
                product: 'اسم المنتج المنتج المنتج المنتج المنتج المنتج المنتج',
                desc: 'وصف وصف  وصف وصفوصفوصف وصف وصف وصف وصف وصف وصف وصف',
                image: 'assets/images/image1.jpg',
                price: 200.18,
              ),
            )
            .toList(),
      ),
    );
  }
}
