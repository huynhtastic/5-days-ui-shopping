import 'package:flutter/material.dart';
import 'package:one_shopping/utils/utils.dart';

const categories = [
  'Hand bags',
  'Jewelery',
  'Footwear',
  'Dresses',
  'Tops',
  'Pants',
];

const categoryTextStyle =
    TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold);

const widgetPadding = 8.0;

class Categories extends StatefulWidget {
  Categories({Key key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44.0,
      child: Padding(
        padding: const EdgeInsets.all(widgetPadding),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: buildCategory,
        ),
      ),
    );
  }

  Widget buildCategory(context, index) => GestureDetector(
        onTap: () => setState(() => selectedIndex = index),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: widgetPadding),
          child: Container(
            child: Column(
              children: [
                Text(
                  categories[index],
                  style: categoryTextStyle.copyWith(
                    color: index == selectedIndex ? Colors.black : Colors.grey,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: widgetPadding / 2),
                  height: 2,
                  width:
                      getTextSize(categories[index], categoryTextStyle).width,
                  color: index == selectedIndex
                      ? Colors.black
                      : Colors.transparent,
                )
              ],
            ),
          ),
        ),
      );
}
