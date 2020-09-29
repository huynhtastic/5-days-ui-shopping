import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:one_shopping/models/product.dart';

class BuyButtons extends StatelessWidget {
  final Product product;
  const BuyButtons(this.product, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MaterialButton(
          minWidth: 56,
          height: 48,
          padding: EdgeInsets.all(8.0),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.0,
              color: Colors.blue,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          onPressed: () {},
          child: SvgPicture.asset('assets/icons/add_to_cart.svg'),
        ),
        SizedBox(width: 32),
        Expanded(
          child: MaterialButton(
            height: 48,
            color: product.color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            onPressed: () {},
            child: Text('BUY NOW', style: TextStyle(color: Colors.white)),
          ),
        )
      ],
    );
  }
}
