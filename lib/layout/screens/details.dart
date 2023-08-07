import 'package:anamil/constants/images.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Image.asset(
              Images.details,
              width: double.infinity,
            )),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('لوحة تشيكلية', style: Theme.of(context).textTheme.titleLarge),
                Text('رسم تشيكلي مصنوع رقميا , نسخة مطبوعة', style: Theme.of(context).textTheme.titleSmall),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('تفاصيل المنتج', style: Theme.of(context).textTheme.titleLarge),
                        Row(
                          children: [
                            Text('الطول', style: Theme.of(context).textTheme.titleSmall),
                            Text('20 سم', style: Theme.of(context).textTheme.titleSmall),
                          ],
                        ),
                        Row(
                          children: [
                            Text('العرض', style: Theme.of(context).textTheme.titleSmall),
                            Text('36 سم', style: Theme.of(context).textTheme.titleSmall),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.person),
                              Column(
                                children: [
                                  Text('جمانه'),
                                  Text('فنان تشكيلي'),
                                ],
                              ),
                              Spacer(),
                              Icon(Icons.message),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
