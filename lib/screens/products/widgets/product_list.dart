import 'package:flutter/material.dart';
import 'package:one_shopping/models/product.dart';

import 'product_card.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            childAspectRatio: 0.75,
          ),
          itemBuilder: _buildProductCard,
        ),
      ),
    );
  }
}

Widget _buildProductCard(BuildContext context, int index) =>
    ProductCard(products[index]);
