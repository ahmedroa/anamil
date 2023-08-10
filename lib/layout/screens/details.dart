import 'package:anamil/constants/MyColors%20.dart';
import 'package:anamil/constants/images.dart';
import 'package:anamil/layout/widgets/Divider.dart';
import 'package:anamil/layout/widgets/productBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    double value = 3.5;

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
        Image.asset(
          Images.anamil,
          width: double.infinity,
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
            Image.asset(Images.person),
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
            Row(
              children: [
                const Text('معدل التقييم '),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
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
            const Align(alignment: Alignment.bottomRight, child: Text('قد يعجبك ')),
          ],
        ),
      ),
    );
