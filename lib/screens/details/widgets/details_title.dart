import 'package:flutter/material.dart';

TextStyle _textStyle = TextStyle(color: Colors.white);

class DetailsTitle extends StatelessWidget {
  final String title;
  const DetailsTitle(this.title, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Aristocratic Hand Bag',
          style: _textStyle,
        ),
        Text(
          title,
          style: _textStyle.copyWith(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
