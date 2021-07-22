import 'package:flutter/material.dart';
import 'package:furniture_shop/constants/constants.dart';

class StarRating extends StatefulWidget {
  const StarRating({Key? key, required this.rating}) : super(key: key);

  final int rating;

  @override
  _StarRatingState createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {

  Widget star(bool fill){
    return Container(
      child: Icon(
        Icons.star,
        size: 18,
        color: fill ? orange : black.withOpacity(0.5),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        if(index < (widget.rating).round()){
          return star(true);
        }else{
          return star(false);
        }
      }),
    );
  }
}
