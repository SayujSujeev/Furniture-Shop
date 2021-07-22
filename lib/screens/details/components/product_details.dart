import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:furniture_shop/constants/constants.dart';
import 'package:furniture_shop/models/product_model.dart';
import 'package:furniture_shop/screens/details/components/star_rating.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key, required this.productModel})
      : super(key: key);

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Positioned(
      top: size.height * 0.55,
      child: Container(
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: appPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productModel.name,
                        style: TextStyle(
                          color: black,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'by ${productModel.manufacturer}',
                        style: TextStyle(
                          color: black.withOpacity(0.5),
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                  Text(
                    '\$${productModel.price}',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 17,
                      letterSpacing: -0.6,
                      color: orange,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    '${productModel.rating}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  StarRating(rating: productModel.rating),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'fabric color',
                        style: TextStyle(
                          color: black.withOpacity(0.4),
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        productModel.color,
                        style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'style',
                        style: TextStyle(
                          color: black.withOpacity(0.4),
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        productModel.style,
                        style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'made in',
                        style: TextStyle(
                          color: black.withOpacity(0.4),
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        productModel.madeIn,
                        style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(productModel.description,style: TextStyle(
                color: black,
                fontWeight: FontWeight.w600,
              ),),
              SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.6,
                    height: 75,
                    decoration: BoxDecoration(
                      color: black,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text('Pay',style: TextStyle(
                        color: white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),

                  Container(
                    width: size.width * 0.2,
                    height: 75,
                    decoration: BoxDecoration(
                      color: black.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Center(
                      child: Icon(
                        Icons.favorite_border_rounded,
                        size: 30,
                        color: black.withOpacity(0.4),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
