import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_weather/core/utils/converter.dart';

import '../../../../../core/utils/constance/colors.dart';
import '../../../../../core/utils/handle_time_data.dart';
import '../../../../../core/utils/weather_icons.dart';
import '../../../../../injector.dart';
import '../../../data/models/handle_weather_response.dart';

Widget weatherTodayCard(WeatherHandleResponse weatherHandleResponse) {
  print('weather icon \n ${weatherHandleResponse.weatherIcon}');
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    color: getIt.get<AppColor>().getPrimeColorInLightMode(),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(start: 12.w),
          child: SizedBox(
            height: 130.h,
            width: 130.w,
            child: getWeatherIcon(
                scale: 4.0.sp,
                icon: weatherHandleResponse.weatherIcon.toString()),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(
            end: 10,
            top: 8,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    getCurrentDate(DateTime.now()),
                    style: TextStyle(fontSize: 12.sp, color: Colors.white),
                  ),
                  Text(
                    ' | ',
                    style: TextStyle(fontSize: 12.sp, color: Colors.white),
                  ),
                  Text(
                    getCurrentTime(DateTime.now()),
                    style: TextStyle(fontSize: 12.sp, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    getIt
                        .get<Converter>()
                        .convertKelvinToCelsius(
                            weatherHandleResponse.weatherTemperature!)
                        .toString(),
                    style: TextStyle(
                        fontSize: 40.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\u2103',
                    style: TextStyle(fontSize: 16.sp, color: Colors.white),
                  )
                ],
              ),
              Text(
                weatherHandleResponse.description!,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
