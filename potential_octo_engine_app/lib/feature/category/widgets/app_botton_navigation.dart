import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:potential_octo_engine_app/core/constants/constant_colors.dart';
import 'package:potential_octo_engine_app/core/local_database/bloc/local_data_bloc.dart';

class AppBottonNavigation extends StatefulWidget {
  final GlobalKey<NavigatorState> _navigatorState;
  const AppBottonNavigation(this._navigatorState, {super.key});

  @override
  State<AppBottonNavigation> createState() => _AppBottonNavigationState();
}

class _AppBottonNavigationState extends State<AppBottonNavigation> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/food.svg',
                      color: index == 0 ? secondaryColor : offColor,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      AppLocalizations.of(context)!.food,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: index == 0 ? secondaryColor : offColor,
                      ),
                    )
                  ],
                ),
              ),
              onTap: () {
                if (index != 0) {
                  setState(() {
                    widget._navigatorState.currentState?.pop();
                    index = 0;
                  });
                }
              },
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/basket.svg',
                      color: index == 1 ? secondaryColor : offColor,
                    ),
                    const SizedBox(
                      height: 4.81,
                    ),
                    _TextAtom(index: index),
                  ],
                ),
              ),
              onTap: () {
                if (index != 1) {
                  setState(() {
                    widget._navigatorState.currentState
                        ?.pushNamed('/basket')
                        .then((value) {
                      if (!mounted) return;
                      setState(() {
                        index = 0;
                      });
                    });
                    index = 1;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _TextAtom extends StatelessWidget {
  final int index;
  const _TextAtom({
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final price = context.select<LocalDataBloc, double>(
      (value) {
        return value.state.maybeWhen(
          orElse: () => 0.0,
          loaded: (basket) {
            double price = 0;
            for (var element in basket) {
              price = price + element.total_price;
            }
            return price;
          },
        );
      },
    );
    return Text(price > 0 ? '$price ₽' : AppLocalizations.of(context)!.basket,
        style: theme.textTheme.bodySmall?.copyWith(
          color: index == 0 ? secondaryColor : offColor,
        ));
  }
}
