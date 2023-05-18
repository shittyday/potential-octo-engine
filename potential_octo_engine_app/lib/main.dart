import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:potential_octo_engine_app/core/api/data/repository/api_repository.dart';
import 'package:potential_octo_engine_app/core/local_database/bloc/local_data_bloc.dart';
import 'package:potential_octo_engine_app/core/local_database/data/repository/local_data_repository.dart';
import 'package:potential_octo_engine_app/core/route_repository.dart';
import 'package:potential_octo_engine_app/core/theme/app_theme_data.dart';
import 'package:potential_octo_engine_app/feature/category/bloc/category_bloc.dart';
import 'package:potential_octo_engine_app/feature/netsted_navigator.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

final globalKey = GlobalKey<NavigatorState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => LocalDataBloc(
              LocalDataRepository(),
            ),
          ),
          BlocProvider(
            create: (context) => CategoryBloc(
              ApiRepository(),
            ),
          )
        ],
        child: RepositoryProvider(
          create: (context) => RouteRepository(
            globalKey,
          ),
          child: MaterialApp(
            navigatorKey: globalKey,
            theme: AppThemeData.themeData,
            home: Builder(
              builder: (_) => const NetstedNavigator(),
            ),
          ),
        ));
  }
}
