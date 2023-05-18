import 'package:flutter/material.dart';
import 'package:potential_octo_engine_app/core/api/data/models/menu.dart';

class MenuCard extends StatelessWidget {
  final Menu menu;
  const MenuCard({
    super.key,
    required this.menu,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/product', arguments: {
            "products": menu.products,
            "categoryName": menu.categoryName,
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Image.network(
                menu.imageUrl,
                errorBuilder: (context, error, stackTrace) {
                  return const Placeholder(
                    fallbackHeight: 200,
                  );
                },
              ),
            ),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 15, bottom: 13, top: 13),
                  child: Text(
                    menu.categoryName,
                    style: theme.textTheme.headlineMedium,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
