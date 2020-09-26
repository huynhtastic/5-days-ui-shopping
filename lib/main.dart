import 'package:flutter/material.dart';
import 'package:one_shopping/routes.dart';

import 'screens/products/products_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductsScreen(),
      routes: routes,
    );
  }
}
