import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_weather/core/utils/handle_time_data.dart';
import 'package:flutter_weather/features/weather/presentation/widgets/shared_widget/weather_item_factory.dart';

import '../../../../core/utils/converter.dart';
import '../../../../core/utils/weather_icons.dart';
import '../../../../injector.dart';
import '../../data/models/hourly_forecast_models/weather_in_hourly_forecast_list.dart';

class WeekWeatherItemDesign implements WeatherItemFactory {
  @override
  Widget designItem(dynamic item) {
    WeatherInHourlyForecast weatherInHourlyForecast = item;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: double.infinity,
        height: 65.h,
        child: Card(
          elevation: 8,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  (DateTime.now().day ==
                          weatherInHourlyForecast.dateTimeText.day)
                      ? 'Today'
                      : getNameOfDay(
                          weatherInHourlyForecast.dateTimeText,
                        ),
                ),
                getWeatherIcon(
                    icon: weatherInHourlyForecast.weather![0].icon, scale: 3),
                Text(
                  getIt
                      .get<Converter>()
                      .convertKelvinToCelsius(
                          weatherInHourlyForecast.main!.temperature!)
                      .toString(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
