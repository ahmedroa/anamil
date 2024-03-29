// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:anamil/constants/MyColors.dart';
import 'package:anamil/dataDemo.dart';
import 'package:anamil/layout/widgets/appbarSearchWidget.dart';
import 'package:anamil/layout/widgets/safeAreaWidget.dart';
import 'package:flutter/material.dart';


class ForYouScreen extends StatelessWidget {
  const ForYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeAreaWidth(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'قد يعجبك',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios),
            ),
            backgroundColor: MyColors.blue,
            elevation: 0,
          ),
          body: Column(
            children: [
              AppbarSearchWidget(),
              Expanded(
                child: productsGridView(context),
              ),
            ],
          )),
    );
  }

  Widget productsGridView(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(10),
      physics: BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: MediaQuery.of(context).size.width / 2,
        mainAxisExtent: MediaQuery.of(context).size.height / 3.7,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
      ),
      children: DataDemo.products,
    );
  }
}
