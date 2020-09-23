import 'package:flutter/material.dart';

const categories = [
  'Hand bags',
  'Jewelery',
  'Footwear',
  'Dresses',
  'Tops',
  'Pants',
];

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
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
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
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            child: Column(
              children: [
                Text(
                  categories[index],
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: index == selectedIndex ? Colors.black : Colors.grey,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 4),
                  height: 2,
                  width: _getTextSize(categories[index]).width,
                  color: selectedIndex == index
                      ? Colors.black
                      : Colors.transparent,
                )
              ],
            ),
          ),
        ),
      );
}

Size _getTextSize(String text) {
  final textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      maxLines: 1,
      textDirection: TextDirection.ltr)
    ..layout(minWidth: 0, maxWidth: double.infinity);

  return textPainter.size;
}
