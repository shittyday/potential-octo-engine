import 'package:flutter/material.dart';

class RouteRepository {
  final GlobalKey<NavigatorState> _navigatorKey;
  const RouteRepository(this._navigatorKey);

  Future showModal(
      {required Widget Function(BuildContext context) builder}) async {
    if (_navigatorKey.currentContext == null) return;
    return showModalBottomSheet(
        useSafeArea: true,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        context: _navigatorKey.currentContext!,
        builder: builder);
  }
}
