import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:potential_octo_engine_app/core/api/data/models/product.dart'
    as model;
import 'package:potential_octo_engine_app/core/constants/constant_colors.dart';
import 'package:potential_octo_engine_app/core/local_database/bloc/local_data_bloc.dart';
import 'package:potential_octo_engine_app/core/local_database/event/local_data_event.dart';
import 'package:potential_octo_engine_app/core/route_repository.dart';

class ProductCard extends StatefulWidget {
  final model.Product product;
  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  void initState() {
    super.initState();
    context.read<LocalDataBloc>().stream.listen((event) {
      event.whenOrNull(
        error: (error) {
          if (!mounted) return;
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('$error')));
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Card(
      elevation: 10,
      child: InkWell(
        onTap: () {
          context.read<RouteRepository>().showModal(
            builder: (context) {
              return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 26,
                          ),
                          Image.network(
                            widget.product.imageUrl,
                            errorBuilder: (context, error, stackTrace) {
                              return const Placeholder(
                                fallbackHeight: 200,
                              );
                            },
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Text(
                            widget.product.name,
                            style: theme.displaySmall,
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${widget.product.cost} ₽',
                                style: theme.displayLarge?.copyWith(
                                  fontSize: 22,
                                  height: 25.83 / 22,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  context.read<LocalDataBloc>().add(
                                      LocalDataEvent.save(
                                          product: widget.product));
                                },
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 38,
                                    vertical: 13,
                                  ),
                                  child: Text('Хочу'),
                                ),
                              )
                            ],
                          ),
                          if (widget.product.description != null) ...[
                            const SizedBox(
                              height: 24,
                            ),
                            Text(
                              widget.product.description!,
                              style:
                                  theme.bodySmall?.copyWith(color: fontColor),
                            ),
                          ]
                        ],
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          decoration: const BoxDecoration(
                            color: greyColor,
                          ),
                          width: 40,
                          height: 4,
                        ),
                      )
                    ],
                  ));
            },
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(12),
              child: Image.network(
                widget.product.imageUrl,
                errorBuilder: (context, error, stackTrace) {
                  return const Placeholder(
                    fallbackHeight: 200,
                  );
                },
              ),
            )),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  widget.product.name,
                  style: theme.bodySmall,
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${widget.product.cost} ₽',
                    style: theme.headlineMedium?.copyWith(
                      fontSize: 22,
                      height: 25.83 / 22,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        context
                            .read<LocalDataBloc>()
                            .add(LocalDataEvent.save(product: widget.product));
                      },
                      child: const Icon(
                        Icons.add,
                        size: 15,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
