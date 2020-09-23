import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const screenPadding = 16.0;

const productNames = [
  'Hand bags',
  'Jewelery',
  'Footwear',
  'Dresses',
  'Tops',
  'Pants',
];

class Products extends StatelessWidget {
  const Products({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: screenPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Women',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            SizedBox(
              height: 24,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productNames.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Text(
                    productNames[index],
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      // TODO: Selected index
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
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
