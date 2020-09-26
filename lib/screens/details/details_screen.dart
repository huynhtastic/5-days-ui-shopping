import 'package:flutter/material.dart';
import 'package:one_shopping/models/product.dart';
import 'package:one_shopping/widgets/custom_app_bar.dart';

import 'widgets/details_title.dart';
import 'widgets/price_with_image.dart';

class DetailsScreenArgs {
  final Product product;

  DetailsScreenArgs(this.product);
}

double _screenPadding = 24.0;
TextStyle _textStyle = TextStyle(color: Colors.white);

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
        padding: EdgeInsets.all(_screenPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DetailsTitle(product.title),
            SizedBox(height: 40.0),
            PriceWithImage(product),
          ],
        ),
      ),
    );
  }
}
