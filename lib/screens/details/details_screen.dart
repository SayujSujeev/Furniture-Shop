import 'package:flutter/material.dart';
import 'package:furniture_shop/constants/constants.dart';
import 'package:furniture_shop/models/product_model.dart';
import 'package:furniture_shop/screens/details/components/custom_appbar.dart';
import 'package:furniture_shop/screens/details/components/product_image.dart';

import 'components/product_details.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ProductImage(imageUrl: product.imageUrl,),
            ProductDetails(productModel: product,),
            CustomAppBar(),
          ],
        ),
      ),
    );
  }
}
