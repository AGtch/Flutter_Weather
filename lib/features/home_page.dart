import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_weather/features/weather/data/repositories/imp_weather_repository.dart';
import 'package:flutter_weather/features/weather/presentation/bloc/hourly_forecast/hourly_forecast_cubit.dart';
import 'package:flutter_weather/features/weather/presentation/bloc/weather_cubit/weather_cubit.dart';
import 'package:flutter_weather/features/weather/presentation/screens/today_weather.dart';
import 'package:flutter_weather/injector.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  // late Position position;
  bool todayIsSelected = true;
  bool weekIsSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => WeatherCubit(
              getIt.get<ImpWeatherRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => HourlyForecastCubit(
              getIt.get<ImpWeatherRepository>(),
            ),
          ),
        ],
        // Todo: weak screen !!!
        child: (selectedIndex == 0) ? ToDayWeather() : ToDayWeather(),
        // getIt.get<PositionCubit>().getCurrentLocation();
      ),
      bottomNavigationBar: navigationButtons(),
    );
  }

// ! you can use RaisedButton inside of this
  Widget navigationButtons() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Card(
            color: Colors.white,
            elevation: 12,
            semanticContainer: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: Container(
              width: 270.w,
              height: 40.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Container(
                      height: 60.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                        color: todayIsSelected ? Colors.black : Colors.white,
                        borderRadius: BorderRadiusDirectional.circular(26.0.r),
                        boxShadow: todayIsSelected
                            ? [
                                BoxShadow(
                                  color: Colors.black45,
                                  spreadRadius: 1,
                                  offset: Offset(.95, .95),
                                ),
                              ]
                            : [],
                      ),
                      child: Center(
                        child: Text(
                          "Today",
                          style: TextStyle(
                              color: (todayIsSelected)
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ),
                    ),
                    onTap: () {
                      //    print("City $currentCity");
                      if (!todayIsSelected) {
                        setState(() {
                          todayIsSelected = true;
                          weekIsSelected = false;
                          selectedIndex = 0;
                        });
                      }
                    },
                  ),
                  SizedBox(
                    width: 26.w,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 40.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                        color: weekIsSelected ? Colors.black : Colors.white,
                        boxShadow: weekIsSelected
                            ? [
                                BoxShadow(
                                    color: Colors.grey.shade300,
                                    spreadRadius: 2,
                                    offset: const Offset(.95, .95))
                              ]
                            : [],
                        borderRadius: BorderRadiusDirectional.circular(26.0.r),
                      ),
                      child: Center(
                        child: Text(
                          "This week",
                          style: TextStyle(
                              color: (weekIsSelected)
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ),
                    ),
                    onTap: () {
                      if (!weekIsSelected) {
                        setState(() {
                          weekIsSelected = true;
                          todayIsSelected = false;
                          selectedIndex = 1;
                        });
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
/*
    return FutureBuilder(
      future: LocationHelper.handleLocationPermission(context),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => WeatherCubit(
                    getIt.get<ImpWeatherRepository>(),
                  ),
                ),
                BlocProvider(
                  create: (context) => HourlyForecastCubit(
                    getIt.get<ImpWeatherRepository>(),
                  ),
                ),
              ],
              child: (selectedIndex == 0)
                  ? ToDayWeather(snapshot.data)
                  : WeekWeather(
                      position: snapshot.data,
                    ),
              // getIt.get<PositionCubit>().getCurrentLocation();
            ),
            bottomNavigationBar: navigationButtons(),
          );
        } else {
          return Center(
            child: Text('No Position !!!!'),
          );
        }
      },
    );

 */
