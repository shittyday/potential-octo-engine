import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:potential_octo_engine_app/core/api/data/models/product.dart';
import 'package:potential_octo_engine_app/core/local_database/bloc/local_data_bloc.dart';
import 'package:potential_octo_engine_app/feature/basket/widget/basket_item.dart';
import 'package:potential_octo_engine_app/feature/category/bloc/category_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
          title:  Text(AppLocalizations.of(context)!.basket),
        ),
        body: context.watch<LocalDataBloc>().state.when(
              init: () => const SizedBox.shrink(),
              loaded: (basket) {
                final pd = <Product>[];
                category.map(
                  error: (value) {},
                  initState: (value) {},
                  loaded: (menu) {
                    for (var element in menu.menu) {
                      pd.addAll(element.products);
                    }
                  },
                );
                final sortedBasket =
                    basket.where((element) => element.quantity > 0).toList();
                return ListView.separated(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    itemBuilder: (context, index) {
                      final product = pd
                          .where((element) =>
                              element.id == sortedBasket[index].product_id)
                          .first;

                      return BasketItem(
                        product: product,
                        quantity: sortedBasket[index].quantity,
                        totalPrice: sortedBasket[index].total_price,
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: sortedBasket.length);
              },
              error: (error) => const SizedBox.shrink(),
            ));
  }
  
}
