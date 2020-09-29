import 'package:flutter/material.dart';
import 'package:one_shopping/models/product.dart';

TextStyle _textStyle = TextStyle(color: Colors.white);

class PriceWithImage extends StatelessWidget {
  final Product product;
  const PriceWithImage(this.product, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Price\n',
                  style: _textStyle,
                ),
                TextSpan(
                  text: '\$${product.price}0',
                  style: _textStyle.copyWith(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Hero(
            tag: product.id,
            child: Image.asset(product.image),
          ),
        ],
      ),
    );
  }
}
