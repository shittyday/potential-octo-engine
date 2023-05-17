import 'package:flutter/material.dart';
import 'package:potential_octo_engine_app/core/api/data/models/product.dart'
    as model;
import 'package:potential_octo_engine_app/feature/product/widgets/product_card.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> with WidgetsBindingObserver {
  @override
  Future<bool> didPopRoute() async {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
      return true;
    }
    return false;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final arguments =
        (ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>);
    final List<model.Product> products = arguments['products'];
    final categoryName = arguments['categoryName'];
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryName),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GridView.count(
            physics: const BouncingScrollPhysics(),
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            children: List.generate(products.length,
                (index) => ProductCard(product: products[index])),
          ),
        ));
  }
}
