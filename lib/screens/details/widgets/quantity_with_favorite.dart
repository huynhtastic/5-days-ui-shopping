import 'package:flutter/material.dart';

import 'quantity_picker.dart';

class QuantityWithFavorite extends StatelessWidget {
  const QuantityWithFavorite({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        QuantityPicker(),
        MaterialButton(
          color: Colors.red,
          shape: CircleBorder(),
          onPressed: () {},
          child: Icon(
            Icons.favorite,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
