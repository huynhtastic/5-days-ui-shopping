import 'package:flutter/widgets.dart';

import './screens/details/details_screen.dart';
import './screens/products/products_screen.dart';

Map<String, WidgetBuilder> routes = {
  DetailsScreen.route: (context) => DetailsScreen(
      (ModalRoute.of(context).settings.arguments as DetailsScreenArgs).product),
  ProductsScreen.route: (context) => ProductsScreen(),
};
