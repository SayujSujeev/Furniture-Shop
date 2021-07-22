import 'package:flutter/material.dart';
import 'package:furniture_shop/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: appPadding,
        vertical: appPadding * 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 25,
              color: white,
            ),
          ),
          Icon(
            Icons.center_focus_weak_rounded,
            size: 25,
            color: white,
          )
        ],
      ),
    );
  }
}
