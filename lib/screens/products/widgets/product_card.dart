import 'package:flutter/material.dart';
import 'package:one_shopping/models/product.dart';
import 'package:one_shopping/screens/details/details_screen.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard(this.product, {Key key}) : super(key: key);

  Widget _buildBody() => Expanded(
        child: Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: product.color,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Hero(
            tag: product.id,
            child: Image.asset(product.image),
          ),
        ),
      );

  Widget _buildFooter() => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            product.title,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0,
            ),
          ),
          Text(
            '\$${product.price}0',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        DetailsScreen.route,
        arguments: DetailsScreenArgs(product),
      ),
      child: Column(
        children: [
          _buildBody(),
          SizedBox(height: 8.0),
          _buildFooter(),
        ],
      ),
    );
  }
}
