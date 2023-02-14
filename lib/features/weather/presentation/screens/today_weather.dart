import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_weather/core/utils/location_helper.dart';
import 'package:flutter_weather/features/weather/data/repositories/local_repository/impl_local_repository.dart';
import 'package:flutter_weather/features/weather/presentation/bloc/local_database_cubit/local_database_cubit.dart';
import 'package:flutter_weather/features/weather/presentation/bloc/local_database_cubit/local_database_state.dart';
import 'package:flutter_weather/features/weather/presentation/bloc/weather_cubit/weather_cubit.dart';
import 'package:flutter_weather/features/weather/presentation/bloc/weather_cubit/weather_state.dart';
import 'package:flutter_weather/features/weather/presentation/intro_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';

import '../../../../core/utils/constance/colors.dart';
import '../../../../injector.dart';
import '../../data/models/handle_weather_response.dart';
import '../../data/models/hourly_forecast_models/hourly_forecast_model.dart';
import '../bloc/hourly_forecast/hourly_forecast_cubit.dart';
import '../bloc/hourly_forecast/hourly_forecast_state.dart';
import '../widgets/shared_widget/weather_item_factory.dart';
import '../widgets/today_screen_widget/app_bar_today_weather.dart';
import '../widgets/today_screen_widget/card_current_weather.dart';
import '../widgets/today_screen_widget/details_today_weather.dart';
import '../widgets/today_screen_widget/forecast_weather.dart';

class ToDayWeather extends StatefulWidget {
  ToDayWeather();

  @override
  State<ToDayWeather> createState() => _ToDayWeatherState();
}

class _ToDayWeatherState extends State<ToDayWeather> {
  bool todayIsSelected = true;
  bool weekIsSelected = false;
  late WeatherHandleResponse weatherHandleResponse;
  late HourlyForecastCubit hourlyForecastCubit;
  bool isFirstReload = true;

  @override
  initState() {
    super.initState();
    BlocProvider.of<LocalDatabaseCubit>(context)
        .getWeatherFromLocalDatabase(context);
  }

  Future<void> navigate() async {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => IntroScreen(),
        ));
  }

  @override
  Widget build(BuildContext todayContext) {
    return BlocConsumer<LocalDatabaseCubit, LocalDatabaseState>(
      builder: (context, state) {
        if (state is LocalDatabaseSuccessState) {
          isFirstReload = true;
          return screenLayout(todayContext, state.data);
        } else if (state is NoDataInLocalDatabase) {
          Position? position = state.position;
          print(
              "----------position--------- \n ${position}  \n --------position--------");
          if (position != null) {
            Map<String, dynamic> weatherQuery = {
              'lat': position.latitude.toString(),
              'lon': position.longitude.toString(),
            };
            BlocProvider.of<WeatherCubit>(context)
                .getWeather(query: weatherQuery);
            hourlyForecastCubit = BlocProvider.of<HourlyForecastCubit>(context);
            hourlyForecastCubit.getHourlyForecastCubit(query: weatherQuery);

            return BlocBuilder<WeatherCubit, WeatherResultState>(
                builder: (context, state) {
              if (state is SuccessState) {
                if (isFirstReload) {
                  getIt
                      .get<ImpLocalRepository>()
                      .saveWeatherInLocalDatabase(state.data);
                } else {
                  getIt
                      .get<ImpLocalRepository>()
                      .updateWeatherInLocalDatabase(state.data);
                }

                return screenLayout(todayContext, state.data);
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            });
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
      listener: (context, state) async {
        if (state is NoDataInLocalDatabase) {
          Position? position = state.position;
          if (position == null) {
            await navigate();
          }
        }
      },
    );
  }

  Widget screenLayout(BuildContext context, WeatherHandleResponse weatherData) {
    return Scaffold(
      backgroundColor: getIt.get<AppColor>().getBackgroundColorLightMode(),
      appBar:
          getAppBar(weatherHandleResponse: weatherData, buildContext: context),
      body: RefreshIndicator(
        displacement: 80,
        backgroundColor: Colors.yellow,
        color: Colors.red,
        strokeWidth: 4,
        triggerMode: RefreshIndicatorTriggerMode.onEdge,
        onRefresh: () async {
          // await Future.delayed(Duration(milliseconds: 1500));
          // TODO : Update screen with new date
          isFirstReload = false;
          Position? position = await LocationHelper.getLocation(context);
          setState(() {
            BlocProvider.of<LocalDatabaseCubit>(context)
                .reloadNewData(position!);
          });
        },
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                weatherTodayCard(
                  weatherData,
                ),
                SizedBox(
                  height: 16.h,
                ),
                weatherDetails(
                  weatherData,
                ),
                SizedBox(
                  height: 16.h,
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: 10.0,
                  ),
                  child: Text(
                    "Hourly Forecast",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                BlocBuilder<HourlyForecastCubit, HourlyForecastState>(
                  builder: (context, state) {
                    HourlyForecastModel hourlyForecastModel;
                    if (state is HourlyForecastSuccessState) {
                      hourlyForecastModel = state.data;
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                    return getWeatherInList(
                      scrollDirection: Axis.horizontal,
                      itemDesign: ItemDesign.forecast,
                      highOfContainer: 240.0.h,
                      itemsInList: hourlyForecastCubit.getSubForecastList(
                          hourlyForecastModel.hourlyForecast),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> refresh() async {
    Fluttertoast.showToast(
      msg: "scrolled",
      fontSize: 28,
      textColor: Colors.white,
      backgroundColor: Colors.red,
    );
  }
}
// LocationHelper locationHelper = LocationHelper();
//           return FutureBuilder(
//               future: LocationHelper.handleLocationPermission(context),
//               builder: (context, snapshot) {
//                 if (snapshot.hasData) {
//                   Position? position = snapshot.data;
//                   Map<String, dynamic> weatherQuery = {
//                     'lat': position?.latitude.toString(),
//                     'lon': position?.longitude.toString(),
//                   };
//                   BlocProvider.of<WeatherCubit>(context)
//                       .getWeather(query: weatherQuery);
//                   hourlyForecastCubit =
//                       BlocProvider.of<HourlyForecastCubit>(context);
//                   hourlyForecastCubit.getHourlyForecastCubit(
//                       query: weatherQuery);
//
//                   return BlocBuilder<WeatherCubit, WeatherResultState>(
//                     builder: (context, state) {
//                       if (state is SuccessState) {
//                         getIt
//                             .get<ImpLocalRepository>()
//                             .saveWeatherInLocalDatabase(state.data);
//
//                         return screenLayout(todayContext, state.data);
//                       }
//                         return Center(
//                           child: CircularProgressIndicator(),
//                         );
//                     },
//                   );
//                 }
// //                Navigator.pushReplacement(context, );
//                 return Center(
//                   child: CircularProgressIndicator(),
//                 );
//               });
