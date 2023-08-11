import 'package:anamil/constants/MyColors%20.dart';
import 'package:anamil/constants/images.dart';
import 'package:anamil/layout/widgets/Divider.dart';
import 'package:anamil/layout/widgets/productBox.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildProduct(context),
                  buildProductDetails(context),
                  const SizedBox(
                    height: 10,
                  ),
                  buildArtistDetails(),
                  const SizedBox(
                    height: 10,
                  ),
                  buildCommit(),
                  const Align(alignment: Alignment.bottomRight, child: Text('قد يعجبك ')),
                  ProductBox(product: 'product', desc: 'desc', image: Images.anamil, price: 5)
                ],
              ),
            )
          ]),
        ],
      )),
    );
  }
}

buildProduct(context) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          'https://firebasestorage.googleapis.com/v0/b/anamil-1179c.appspot.com/o/prodact.png?alt=media&token=d4899492-6fda-4596-bad8-8cf78ec6c518',
          // width: 1000,
          // height: 500,

          // width: double.infinity,

          // height: double.infinity,
        ),
        Text('لوحة تشيكلية', style: Theme.of(context).textTheme.titleLarge),
        Text('رسم تشيكلي مصنوع رقميا , نسخة مطبوعة', style: Theme.of(context).textTheme.titleSmall)
      ],
    );

buildArtistDetails() => Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(
              Images.person,
            ),
            const Column(
              children: [
                Text('جمانه'),
                Text('فنان تشكيلي'),
              ],
            ),
            const Spacer(),
            Image.asset(Images.chat)
          ],
        ),
      ),
    );

buildProductDetails(context) => Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('تفاصيل المنتج', style: Theme.of(context).textTheme.titleLarge!.copyWith(color: MyColors.blue)),
            Row(
              children: [
                Text('الطول', style: Theme.of(context).textTheme.titleSmall),
                Text('20 سم', style: Theme.of(context).textTheme.titleSmall),
              ],
            ),
            buildDivider(),
            Row(
              children: [
                Text('العرض', style: Theme.of(context).textTheme.titleSmall),
                Text('36 سم', style: Theme.of(context).textTheme.titleSmall),
              ],
            ),
          ],
        ),
      ),
    );

buildCommit() => Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Row(
              children: [
                Text('معدل التقييم '),
              ],
            ),
            buildDivider(),
            const Row(
              children: [
                Column(
                  children: [
                    Text('احمد'),
                    Text('جوده ممتازه'),
                  ],
                ),
                Spacer(),
                Icon(Icons.folder_delete_rounded),
              ],
            ),
            TextButton(onPressed: () {}, child: const Text('المزيد')),
          ],
        ),
      ),
    );
