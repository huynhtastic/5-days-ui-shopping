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
      height: 40.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
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
          child: Text(
            categories[index],
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: index == selectedIndex ? Colors.black : Colors.grey,
            ),
          ),
        ),
      );
}
