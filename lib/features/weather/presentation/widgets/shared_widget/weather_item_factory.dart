import 'package:flutter/cupertino.dart';

import '../today_screen_widget/hourly_item_design.dart';
import '../week_weather_item_design.dart';

enum ItemDesign { forecast, weakWeather }

abstract class WeatherItemFactory {
  Widget designItem(dynamic item);

  factory WeatherItemFactory(ItemDesign itemDesign) {
    switch (itemDesign) {
      case ItemDesign.forecast:
        {
          return HourlyItemDesign();
        }
      case ItemDesign.weakWeather:
        {
          return WeekWeatherItemDesign();
        }
    }
  }
}
