import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:potential_octo_engine_app/core/api/data/models/product.dart';
import 'package:potential_octo_engine_app/core/local_database/bloc/local_data_bloc.dart';
import 'package:potential_octo_engine_app/feature/category/bloc/category_bloc.dart';

class Basket extends StatefulWidget {
  const Basket({super.key});

  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> with WidgetsBindingObserver {
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
    final category = context.watch<CategoryBloc>().state;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Basket'),
        ),
        body: context.watch<LocalDataBloc>().state.when(
              init: () => const SizedBox.shrink(),
              loaded: (basket) {
                final pd = <Product>[];
                category.whenOrNull(
                  loaded: (menu) {
                    return menu.map((e) => pd.addAll(e.products));
                  },
                );
                return ListView.separated(
                    itemBuilder: (context, index) {
                      String path = '';
                      String weight = '';
                      String name = '';
                      try {
                        path = pd
                            .where((element) =>
                                element.id == basket[index].product_id)
                            .first
                            .imageUrl;
                        weight = pd
                            .where((element) =>
                                element.id == basket[index].product_id)
                            .first
                            .sizes;
                        name = pd
                            .where((element) =>
                                element.id == basket[index].product_id)
                            .first
                            .name;
                      } catch (e) {}

                      return Row(
                        children: [
                          Image.network(
                            path,
                            errorBuilder: (context, error, stackTrace) =>
                                const Placeholder(
                              fallbackHeight: 100,
                              fallbackWidth: 100,
                            ),
                          ),
                          Column(
                            children: [
                              Text(name),
                              Text('${basket[index].quantity}'),
                              Text('${basket[index].total_price}'),
                              Text(
                                weight,
                                style: Theme.of(context).textTheme.bodyLarge,
                              )
                            ],
                          )
                        ],
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: basket.length);
              },
              error: (error) => const SizedBox.shrink(),
            ));
  }
}
