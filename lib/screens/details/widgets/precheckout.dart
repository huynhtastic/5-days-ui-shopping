import 'package:flutter/material.dart';
import 'package:one_shopping/models/product.dart';

import 'buy_buttons.dart';
import 'color_dots.dart';
import 'product_size.dart';
import 'quantity_with_favorite.dart';

class Precheckout extends StatelessWidget {
  final Product product;
  const Precheckout(this.product, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: size.height * 0.23),
      padding: EdgeInsets.only(
        top: size.height * 0.1,
        left: 24.0,
        right: 24.0,
        bottom: 32.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32.0),
          topRight: Radius.circular(32.0),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: ColorDots()),
              Expanded(child: ProductSize()),
            ],
          ),
          SizedBox(height: 24.0),
          Text(product.description, style: TextStyle(height: 2.0)),
          SizedBox(height: 24.0),
          QuantityWithFavorite(),
          SizedBox(height: 16.0),
          BuyButtons(product),
        ],
      ),
    );
  }
}
