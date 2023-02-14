import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_weather/features/home_page.dart';

import 'features/weather/data/repositories/local_repository/impl_local_repository.dart';
import 'features/weather/presentation/bloc/bloc_observer.dart';
import 'features/weather/presentation/bloc/local_database_cubit/local_database_cubit.dart';
import 'injector.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  setupGetIt();
  // getIt.get<SqliteDatabaseHelper>().initializeSqliteDatabase();

  runZonedGuarded(() {
    runApp(MyApp());
  }, (error, stack) {});
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: BlocProvider(
              create: (context) => LocalDatabaseCubit(
                impLocalRepository: getIt.get<ImpLocalRepository>(),
              ),
              child: HomePage(),
            ),
          );
        });
  }
}
/*

 */
