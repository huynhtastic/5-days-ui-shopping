import 'package:flutter/material.dart';
import 'package:one_shopping/widgets/custom_app_bar.dart';

import 'widgets/categories.dart';
import 'widgets/product_list.dart';

const screenPadding = 16.0;

class ProductsScreen extends StatelessWidget {
  static const route = 'products';
  const ProductsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, Colors.transparent),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: screenPadding),
              child: Text(
                'Women',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Categories(),
            ProductList(),
          ],
        ),
      ),
    );
  }
}
