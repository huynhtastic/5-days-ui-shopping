import 'package:flutter/material.dart';
import 'package:one_shopping/models/product.dart';
import 'package:one_shopping/widgets/custom_app_bar.dart';

import 'widgets/details_title.dart';
import 'widgets/price_with_image.dart';

class DetailsScreenArgs {
  final Product product;

  DetailsScreenArgs(this.product);
}

TextStyle _textStyle = TextStyle(color: Colors.white);

class DetailsScreen extends StatelessWidget {
  static const route = 'details';

  final Product product;
  const DetailsScreen(this.product, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(context, product.color),
      body: Container(
        color: product.color,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DetailsTitle(product.title),
              SizedBox(height: 40.0),
              SizedBox(
                height: size.height,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.23),
                      padding: EdgeInsets.only(
                        top: size.height * 0.1,
                        left: 24.0,
                        right: 24.0,
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
                              Column(
                                children: [
                                  Text('Color'),
                                  Container(
                                    child: DecoratedBox(
                                        decoration: BoxDecoration(
                                      // color: ,
                                      shape: BoxShape.circle,
                                    )),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    PriceWithImage(product),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
