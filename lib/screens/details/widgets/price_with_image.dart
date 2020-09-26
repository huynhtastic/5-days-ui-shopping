import 'package:flutter/material.dart';
import 'package:one_shopping/models/product.dart';

TextStyle _textStyle = TextStyle(color: Colors.white);

class PriceWithImage extends StatelessWidget {
  final Product product;
  const PriceWithImage(this.product, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Price', style: _textStyle),
            SizedBox(height: 8.0),
            Text(
              '\$${product.price}0',
              style: _textStyle.copyWith(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        Image.asset(product.image),
      ],
    );
  }
}
