import 'package:flutter/material.dart';

double _screenPadding = 24.0;
TextStyle _textStyle = TextStyle(color: Colors.white);

class DetailsTitle extends StatelessWidget {
  final String title;
  const DetailsTitle(this.title, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(_screenPadding),
      child: Column(
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
      ),
    );
  }
}
