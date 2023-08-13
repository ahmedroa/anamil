// ignore_for_file: prefer_const_constructors

import 'package:anamil/constants/MyColors.dart';
import 'package:anamil/dataDemo.dart';
import 'package:flutter/material.dart';

String dropdownValue = 'المفضلة';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'المفضلة',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: MyColors.blue,
        elevation: 0,
      ),
      body: Column(
        children: [
          appbarFavoriteWidget(context),
          Expanded(
            child: productsGridView(context),
          ),
        ],
      ),
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
      children: DataDemo.products
          .where((element) => element.product.isFavorite == true)
          .toList(),
    );
  }

  Padding appbarFavoriteWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 1.3,
            height: 42,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Color(0xffCECECE),
                width: 1,
              ),
            ),
            child: DropdownButton(
              value: dropdownValue,
              icon: SizedBox(),
              elevation: 2,
              underline: SizedBox(),
              items: ['المفضلة', 'لوحات', 'لوحات زيتية', 'خزف']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Text(
                      value,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
            ),
          ),
          Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              color: MyColors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: IconButton(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onPressed: () {
                print('icon button for filter');
              },
              icon: Icon(size: 20, Icons.menu, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
