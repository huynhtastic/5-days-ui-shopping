import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Products extends StatelessWidget {
  const Products({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/back.svg'),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/cart.svg',
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(),
    );
  }
}
