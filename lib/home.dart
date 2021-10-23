import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'model/products_repository.dart';
import 'model/product.dart';
import 'supplemental/asymmetric_view.dart';

class HomePage extends StatelessWidget {
  // TODO: Add a variable for Category (104)
  final Category category;
  const HomePage({this.category = Category.all, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Return an AsymmetricView (104)
    // TODO: Pass Category variable to AsymmetricView (104)
     return AsymmetricView(products: ProductsRepository.loadProducts(category));
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            // ignore: avoid_print
            print('Menu button');
          },
        ),
        title: const Text('SHRINE'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              // ignore: avoid_print
              print('Search button');
            },
          ),
          IconButton(
            icon: const Icon(Icons.tune, semanticLabel: 'filter'),
            onPressed: () {
              // ignore: avoid_print
              print('Filter button');
            },
          ),
        ],
      ),
      body: AsymmetricView(
          products: ProductsRepository.loadProducts(Category.all)),
    );
  }
}
