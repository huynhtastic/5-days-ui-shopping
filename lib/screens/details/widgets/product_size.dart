import 'package:flutter/material.dart';

class ProductSize extends StatelessWidget {
  const ProductSize({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Size\n',
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: '12 cm',
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
