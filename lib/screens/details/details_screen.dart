import 'package:flutter/material.dart';
import 'package:one_shopping/models/product.dart';

class DetailsScreenArgs {
  final Product product;

  DetailsScreenArgs(this.product);
}

class DetailsScreen extends StatelessWidget {
  static const route = 'details';

  final Product product;
  const DetailsScreen(this.product, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: product.color,
      // child: ,
    );
  }
}
