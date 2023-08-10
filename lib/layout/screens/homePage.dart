import 'package:anamil/constants/images.dart';
import 'package:anamil/layout/widgets/productBox.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [ProductBox(product: 'product', desc: 'desc', image: Images.anamil, price: 5)],
      ),
    );
  }
}
