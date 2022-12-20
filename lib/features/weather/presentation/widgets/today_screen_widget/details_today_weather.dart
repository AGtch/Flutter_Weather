import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/handle_weather_response.dart';

Widget weatherDetails(WeatherHandleResponse weatherHandleResponse) {
  return Card(
    elevation: 8,
    semanticContainer: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Icon(
                Icons.cloud_queue_sharp,
                size: 40.sp,
              ),
              Text(
                '${weatherHandleResponse.weatherHumidity}%',
                style: TextStyle(fontSize: 12.sp),
              ),
              Text(
                "Humidity",
                style: TextStyle(fontSize: 10.sp),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.air_sharp,
                size: 40.sp,
              ),
              Text(
                "${weatherHandleResponse.windSpeed} km/h",
                style: TextStyle(fontSize: 12.sp),
              ),
              Text(
                "Wind Speed",
                style: TextStyle(fontSize: 10.sp),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.speed_outlined,
                size: 40.sp,
              ),
              Text(
                "${weatherHandleResponse.weatherPressure} hPa",
                style: TextStyle(fontSize: 12),
              ),
              Text(
                "Air Pressure",
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
