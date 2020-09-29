import 'package:flutter/material.dart';

const _colors = [0xFF356C95, 0xFFF8C078, 0xFFA29B9B];

class ColorDots extends StatefulWidget {
  const ColorDots({Key key}) : super(key: key);

  @override
  _ColorDotsState createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Color'),
        SizedBox(height: 8.0),
        Row(
          children: _colors.asMap().entries.map((entry) {
            final index = entry.key;
            final color = entry.value;

            final isSelected = index == selectedIndex;
            return GestureDetector(
              onTap: () => setState(() => selectedIndex = index),
              child: _ColorDot(color, isSelected),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class _ColorDot extends StatelessWidget {
  final int color;
  final bool isSelected;
  const _ColorDot(this.color, this.isSelected, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      margin: EdgeInsets.only(right: 8.0),
      height: 24.0,
      width: 24.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? Colors.black : Colors.transparent,
          width: 1.0,
        ),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color(color),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
