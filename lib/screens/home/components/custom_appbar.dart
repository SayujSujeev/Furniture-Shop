import 'package:flutter/material.dart';
import 'package:furniture_shop/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(appPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 25,
          ),
          Text(
            'Explore',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          Icon(
            Icons.center_focus_weak_rounded,
            size: 25,
          )
        ],
      ),
    );
  }
}
