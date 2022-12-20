import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_weather/core/utils/converter.dart';
import 'package:flutter_weather/core/utils/handle_time_data.dart';
import 'package:flutter_weather/core/utils/weather_icons.dart';

import '../../../../../injector.dart';
import '../../../data/models/hourly_forecast_models/weather_in_hourly_forecast_list.dart';
import '../shared_widget/weather_item_factory.dart';

class HourlyItemDesign implements WeatherItemFactory {
  @override
  Widget designItem(dynamic item) {
    WeatherInHourlyForecast weatherInHourlyForecast = item;
    return Card(
      elevation: 8,
      semanticContainer: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              (DateTime.now() == weatherInHourlyForecast.dateTimeText)
                  ? 'Now'
                  : getCurrentTime(weatherInHourlyForecast.dateTimeText),
              style: TextStyle(
                fontSize: 16.sp,
              ),
            ),
            getWeatherIcon(
                icon: weatherInHourlyForecast.weather![0].icon, scale: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisSize: ,
              children: [
                Text(
                  getIt
                      .get<Converter>()
                      .convertKelvinToCelsius(
                          weatherInHourlyForecast.main!.temperature!)
                      .toString(),
                  style: TextStyle(
                    fontSize: 16.sp,
                  ),
                ),
                Text(
                  '\u2103',
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
