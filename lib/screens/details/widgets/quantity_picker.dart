import 'package:flutter/material.dart';

class QuantityPicker extends StatefulWidget {
  const QuantityPicker({Key key}) : super(key: key);

  @override
  _QuantityPickerState createState() => _QuantityPickerState();
}

class _QuantityPickerState extends State<QuantityPicker> {
  int quantitySelected = 0;

  void increment() {
    setState(() => quantitySelected++);
  }

  void decrement() {
    if (quantitySelected > 0) setState(() => quantitySelected--);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _OutlineIconButton(Icons.remove, decrement),
        SizedBox(width: 16.0),
        Text(quantitySelected.toString()),
        SizedBox(width: 16.0),
        _OutlineIconButton(Icons.add, increment),
      ],
    );
  }
}

class _OutlineIconButton extends StatelessWidget {
  final IconData icon;
  final void Function() onPressed;
  const _OutlineIconButton(this.icon, this.onPressed, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48.0,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        child: Icon(icon),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}
