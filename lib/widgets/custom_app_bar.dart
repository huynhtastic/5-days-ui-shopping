import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar buildAppBar(BuildContext context, Color color) {
  final buttonColor = color == Colors.transparent ? Colors.black : Colors.white;

  return AppBar(
    backgroundColor: color,
    elevation: 0.0,
    leading: Navigator.of(context).canPop()
        ? IconButton(
            icon: SvgPicture.asset(
              'assets/icons/back.svg',
              color: buttonColor,
            ),
            onPressed: () => Navigator.of(context).pop(),
          )
        : null,
    actions: [
      IconButton(
        icon: SvgPicture.asset(
          'assets/icons/search.svg',
          color: buttonColor,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset(
          'assets/icons/cart.svg',
          color: buttonColor,
        ),
        onPressed: () {},
      )
    ],
  );
}
