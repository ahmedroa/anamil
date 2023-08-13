import 'package:anamil/constants/images.dart';
import 'package:anamil/layout/widgets/productBox.dart';
import 'package:anamil/models/product.dart';

class DataDemo {
  static var products = [
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
        isFavorite: true,
      ),
    ),
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
    ProductBox(
      product: Product(
        images: [Images.imgDemo1],
        details: [],
        category: '',
      ),
    ),
    ProductBox(
      product: Product(
        images: [Images.imgDemo5],
        details: [],
        category: '',
        isFavorite: true,
      ),
    ),
    ProductBox(
      product: Product(
        images: [Images.imgDemo13],
        details: [],
        category: '',
        isFavorite: true,
      ),
    ),
    ProductBox(
      product: Product(
        images: [Images.imgDemo10],
        details: [],
        category: '',
      ),
    ),
  ];
}
