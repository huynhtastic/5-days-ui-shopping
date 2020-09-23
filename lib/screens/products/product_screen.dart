import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/categories.dart';

const screenPadding = 16.0;

class Products extends StatelessWidget {
  const Products({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: screenPadding),
              child: Text(
                'Women',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Categories(),
          ],
        ),
      ),
    );
  }
}

final appBar = AppBar(
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
);
