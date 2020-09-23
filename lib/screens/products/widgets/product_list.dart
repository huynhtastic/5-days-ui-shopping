import 'package:flutter/material.dart';
import 'package:one_shopping/models/product.dart';

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
            itemBuilder: buildProductItem),
      ),
    );
  }

  Widget buildProductItem(context, index) {
    final product = products[index];
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: product.color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Hero(
              tag: product.id.toString(),
              child: Image.asset(product.image),
            ),
          ),
        ),
        Column(
          children: [
            Text(product.title),
            Text(product.price.toString()),
          ],
        ),
      ],
    );
  }
}
