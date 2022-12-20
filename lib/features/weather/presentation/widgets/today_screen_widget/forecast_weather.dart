import 'package:flutter/material.dart';

import '../shared_widget/weather_item_factory.dart';
import '../shared_widget/weather_list.dart';

Widget getWeatherInList({
  required Axis scrollDirection,
  required ItemDesign itemDesign,
  required List<dynamic> itemsInList,
  required double highOfContainer,
}) {
  return Container(
    height: highOfContainer,
    child: WeatherList(
      scrollDirection: scrollDirection,
      itemDesign: itemDesign,
      itemsInList: itemsInList,
    ),
  );
}

// int searchForCurrentTimeInForecast(
//     List<WeatherInHourlyForecast> weatherForecast) {
//   int indexTarget = (weatherForecast.length / 2).floor();
//   for (int i = 1; i < weatherForecast.length; i++) {
//     if (getCurrentTime(weatherForecast[i].dateTimeText) ==
//         getCurrentTime(weatherForecast[0].dateTimeText)) {
//       indexTarget = i;
//       return indexTarget;
//     }
//   }
//   print(' index target \n $indexTarget \n index target ');
//   return indexTarget;
// }
//
// List<WeatherInHourlyForecast> getSubForecastList(
//     List<WeatherInHourlyForecast> weatherForecast) {
//   int target = (searchForCurrentTimeInForecast(weatherForecast) + 1);
//   return weatherForecast.sublist(0, target);
// }
