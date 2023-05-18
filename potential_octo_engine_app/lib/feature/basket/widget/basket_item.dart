import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:potential_octo_engine_app/core/api/data/models/product.dart';
import 'package:potential_octo_engine_app/core/constants/constant_colors.dart';
import 'package:potential_octo_engine_app/core/local_database/bloc/local_data_bloc.dart';
import 'package:potential_octo_engine_app/core/local_database/event/local_data_event.dart';

class BasketItem extends StatelessWidget {
  final Product product;
  final int quantity;
  final double totalPrice;
  const BasketItem({
    super.key,
    required this.product,
    required this.quantity,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(children: [
      Expanded(
        flex: 1,
        child: Image.network(
          product.imageUrl,
          errorBuilder: (context, error, stackTrace) => const Placeholder(
            fallbackHeight: 100,
            fallbackWidth: 100,
          ),
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      Expanded(
        flex: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.name,
              style: theme.textTheme.bodySmall,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$totalPrice ₽',
                      style: theme.textTheme.headlineMedium,
                    ),
                    Text(
                      product.sizes,
                      style: theme.textTheme.bodySmall,
                    )
                  ],
                ),
                Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                        color: greyColor1,
                        borderRadius: BorderRadius.circular(100)),
                    child: Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              context
                                  .read<LocalDataBloc>()
                                  .add(LocalDataEvent.remove(product: product));
                            },
                            child: const Icon(
                              Icons.remove,
                              size: 15,
                            )),
                        const SizedBox(
                          width: 14,
                        ),
                        Text(
                          '$quantity',
                          style: theme.textTheme.bodySmall,
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        GestureDetector(
                            onTap: () {
                              context
                                  .read<LocalDataBloc>()
                                  .add(LocalDataEvent.save(product: product));
                            },
                            child: const Icon(
                              Icons.add,
                              size: 15,
                            ))
                      ],
                    ))
              ],
            )
          ],
        ),
      )
    ]);
  }
}
