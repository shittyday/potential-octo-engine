import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:potential_octo_engine_app/feature/category/widgets/app_botton_navigation.dart';
import 'package:potential_octo_engine_app/feature/product/screen/product.dart';

import 'basket/screen/basket.dart';
import 'category/screen/category.dart';

class NetstedNavigator extends StatefulWidget {
  const NetstedNavigator({super.key});

  @override
  State<NetstedNavigator> createState() => _NetstedNavigatorState();
}

class _NetstedNavigatorState extends State<NetstedNavigator> {
  final _navigationKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Scaffold(
          bottomNavigationBar: AppBottonNavigation(_navigationKey),
          body: Navigator(
            requestFocus: true,
            key: _navigationKey,
            reportsRouteUpdateToEngine: true,
            onPopPage: (route, result) => route.didPop(result),
            onGenerateRoute: (settings) {
              switch (settings.name) {
                case '/':
                  return CupertinoPageRoute(
                    builder: (context) => const Category(),
                  );
                case '/basket':
                  return CupertinoPageRoute(
                    builder: (context) => const Basket(),
                  );
              }
              return CupertinoPageRoute(
                builder: (context) => const Product(),
                settings: settings,
              );
            },
          ),
        ));
  }
}
