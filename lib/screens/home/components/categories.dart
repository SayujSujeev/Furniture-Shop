import 'package:flutter/material.dart';
import 'package:furniture_shop/constants/constants.dart';
import 'package:furniture_shop/data/data.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedCategoryIndex = 1;

  Widget _buildCategoryList(BuildContext context, int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedCategoryIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: appPadding),
        child: Column(
          children: [
            Text(
              categoryList[index],
              style: TextStyle(
                color: selectedCategoryIndex == index
                    ? black
                    : black.withOpacity(0.1),
                fontSize: 18,
                fontWeight: selectedCategoryIndex == index
                    ? FontWeight.w600
                    : FontWeight.normal,
              ),
            ),
            Container(
              height: 3,
              width: 25,
              decoration: BoxDecoration(
                color: selectedCategoryIndex == index ? orange : Colors.transparent,
                borderRadius: BorderRadius.circular(30),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: appPadding),
      child: Container(
        height: size.height * 0.05,
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
              return _buildCategoryList(context, index);
            }),
      ),
    );
  }
}
