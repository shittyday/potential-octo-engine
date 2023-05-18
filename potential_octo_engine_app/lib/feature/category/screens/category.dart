import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:potential_octo_engine_app/feature/category/bloc/category_bloc.dart';
import 'package:potential_octo_engine_app/feature/category/widgets/menu_card.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:  Text(AppLocalizations.of(context)!.category),
        ),
        body: const _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CategoryBloc>().state.when(
          initState: () => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
          loaded: (menu) => GridView.count(
            physics: const BouncingScrollPhysics(),
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            children: List.generate(
                menu.length, (index) => MenuCard(menu: menu[index])),
          ),
          error: (error) => Center(
            child: Text(
              '$error',
            ),
          ),
        );
    return state;
  }
}
