import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_weather/core/utils/constance/colors.dart';
import 'package:flutter_weather/injector.dart';
import 'package:geolocator/geolocator.dart';

import '../../data/models/handle_weather_response.dart';
import '../../data/models/hourly_forecast.dart';
import '../bloc/hourly_forecast/hourly_forecast_cubit.dart';
import '../bloc/hourly_forecast/hourly_forecast_state.dart';
import '../bloc/weather_cubit/weather_cubit.dart';
import '../bloc/weather_cubit/weather_state.dart';
import '../widgets/shared_widget/weather_item_factory.dart';
import '../widgets/today_screen_widget/app_bar_today_weather.dart';
import '../widgets/today_screen_widget/card_current_weather.dart';
import '../widgets/today_screen_widget/details_today_weather.dart';
import '../widgets/today_screen_widget/forecast_weather.dart';

class ToDayWeather extends StatefulWidget {
  Position position;

  ToDayWeather({super.key, required this.position});

  @override
  State<ToDayWeather> createState() => _ToDayWeatherState();
}

class _ToDayWeatherState extends State<ToDayWeather> {
  bool todayIsSelected = true;
  bool weekIsSelected = false;
  late HourlyForecastCubit hourlyForecastCubit;
  late WeatherHandleResponse weatherHandleResponse;

  @override
  initState() {
    // TODO: implement initState
    super.initState();

    Map<String, dynamic> weatherQuery = {
      'lat': widget.position.latitude.toString(),
      'lon': widget.position.longitude.toString(),
    };
    BlocProvider.of<WeatherCubit>(context).getWeather(query: weatherQuery);
    hourlyForecastCubit = BlocProvider.of<HourlyForecastCubit>(context);

    Map<String, dynamic> hourlyWeatherQuery = {
      'lat': widget.position.latitude.toString(),
      'lon': widget.position.longitude.toString(),
    };
    hourlyForecastCubit.getHourlyForecastCubit(query: hourlyWeatherQuery);
  }

  @override
  Widget build(BuildContext todayContext) {
    return BlocBuilder<WeatherCubit, WeatherResultState>(
      builder: (context, state) {
        if (state is SuccessState) {
          // currentWeather = state.data;
          weatherHandleResponse = WeatherHandleResponse.convertCurrentWeather(
              currentWeather: state.data);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return Scaffold(
          backgroundColor: getIt.get<AppColor>().getBackgroundColorLightMode(),
          appBar: getAppBar(
              weatherHandleResponse: weatherHandleResponse,
              buildContext: todayContext),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  weatherTodayCard(
                    weatherHandleResponse,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  weatherDetails(
                    weatherHandleResponse,
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
                        highOfContainer: 240.0,
                        itemsInList: hourlyForecastCubit.getSubForecastList(
                            hourlyForecastModel.hourlyForecast),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
