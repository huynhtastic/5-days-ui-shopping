import 'package:flutter/material.dart';
import 'package:one_shopping/models/product.dart';
import 'package:one_shopping/widgets/custom_app_bar.dart';

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
    return Scaffold(
      appBar: buildAppBar(context, product.color),
      body: Container(
        color: product.color,
        // child: ,
      ),
    );
  }
}
