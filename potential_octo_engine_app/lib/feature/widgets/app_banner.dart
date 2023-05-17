import 'dart:async';

import 'package:flutter/material.dart';

class AppBanner extends StatelessWidget {
  const AppBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 24, bottom: 20),
        child: Stack(
          fit: StackFit.loose,
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/images/banner.png',
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 11,
              right: 11,
              child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                  child: const _TimerWidget()),
            )
          ],
        ));
  }
}

class _TimerWidget extends StatefulWidget {
  const _TimerWidget();

  @override
  State<_TimerWidget> createState() => __TimerWidgetState();
}

class __TimerWidgetState extends State<_TimerWidget>
    with WidgetsBindingObserver {
  Timer? _timer;
  @override
  void didChangeAccessibilityFeatures() {
    print('object');
    super.didChangeAccessibilityFeatures();
  }

  @override
  Future<bool> didPopRoute() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {});
    });
    return super.didPopRoute();
  }

  @override
  Future<bool> didPushRoute(String route) {
    _timer?.cancel();
    return super.didPushRoute(route);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
          setState(() {});
        });
        break;

      case AppLifecycleState.inactive:
        _timer?.cancel();
        break;
      case AppLifecycleState.paused:
        // TODO: Handle this case.
        break;
      case AppLifecycleState.detached:
        // TODO: Handle this case.
        break;
    }
  }

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {});
    });
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    _timer?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      '10:${_timer?.tick}',
      style: theme.textTheme.displaySmall,
    );
  }
}
