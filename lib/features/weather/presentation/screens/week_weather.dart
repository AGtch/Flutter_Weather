import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';

import '../../data/models/hourly_forecast_models/hourly_forecast_model.dart';
import '../bloc/hourly_forecast/hourly_forecast_cubit.dart';
import '../bloc/hourly_forecast/hourly_forecast_state.dart';
import '../widgets/shared_widget/weather_item_factory.dart';
import '../widgets/today_screen_widget/forecast_weather.dart';

class WeekWeather extends StatefulWidget {
  final Position position;

  WeekWeather({Key? key, required this.position}) : super(key: key);

  @override
  State<WeekWeather> createState() => _WeekWeatherState();
}

class _WeekWeatherState extends State<WeekWeather> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Map<String, dynamic> weekWeatherQuery = {
      'lat': widget.position.latitude.toString(),
      'lon': widget.position.longitude.toString()
    };
    BlocProvider.of<HourlyForecastCubit>(context)
        .getHourlyForecastCubit(query: weekWeatherQuery);
  }

  @override
  Widget build(BuildContext context) {
    HourlyForecastModel hourlyForecastModel;

    return BlocBuilder<HourlyForecastCubit, HourlyForecastState>(
      builder: (context, state) {
        if (state is HourlyForecastSuccessState) {
          hourlyForecastModel = state.data;
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.white,
            title: Text(hourlyForecastModel.city['name'].toString(),
                style: TextStyle(color: Colors.black)),
          ),
          body: getWeatherInList(
            scrollDirection: Axis.vertical,
            itemDesign: ItemDesign.weakWeather,
            highOfContainer: double.infinity.h,
            itemsInList: hourlyForecastModel.hourlyForecast,
          ),
        );
      },
    );
  }
}
