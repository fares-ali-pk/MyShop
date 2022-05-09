import 'package:flutter/material.dart';
import 'package:shop/utilities/app_theme.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String id;
  // final String title;
  // final String imageUrl;
  //
  // const ProductDetailScreen(
  //     {Key? key, required this.id, required this.title, required this.imageUrl})
  //     : super(key: key);

  static const routeName = '/product-detail';

  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
    );
  }
}
