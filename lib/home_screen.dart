import 'package:flutter/material.dart';

import 'product.dart';
import 'product_items.dart';

class HomeScreen extends StatelessWidget {
  final List<Product> _loadedProducts = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
  ];

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("MyShop"),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: _loadedProducts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3/4,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemBuilder: (BuildContext context, int index) => ProductItems(
          id: _loadedProducts[index].id,
          title: _loadedProducts[index].title,
          imageUrl: _loadedProducts[index].imageUrl,
        ),
      ),
    );
  }
}
