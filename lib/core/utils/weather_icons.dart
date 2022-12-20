import 'package:flutter/material.dart';

import 'constance/strings.dart';

// TODO : Handle day and night icons , Need Some clean up ;
Image getWeatherIcon({required String icon, required double scale}) {
  if (icon.contains('d')) {
    if (icon.contains("01")) {
      return Image.asset(
        '${weatherBaseImageAssets}clear_day.png',
        scale: scale,
      );
    } else if (icon.contains("02")) {
      return Image.asset(
        '${weatherBaseImageAssets}sun_few_clouds.png',
        scale: scale,
      );
    } else if (icon.contains('03')) {
      return Image.asset(
        '${weatherBaseImageAssets}cloud.png',
        scale: scale,
      );
    } else if (icon.contains('04')) {
      return Image.asset(
        '${weatherBaseImageAssets}cloud.png',
        scale: scale,
      );
    } else if (icon.contains('09')) {
      return Image.asset(
        '${weatherBaseImageAssets}rain.png',
        scale: scale,
      );
    } else if (icon.contains('10')) {
      return Image.asset(
        '${weatherBaseImageAssets}rain.png',
        scale: scale,
      );
    } else if (icon.contains('11')) {
      return Image.asset(
        '${weatherBaseImageAssets}thunderstorm.png',
        scale: scale,
      );
    } else if (icon.contains('13')) {
      return Image.asset(
        '${weatherBaseImageAssets}snow.png',
        scale: scale,
      );
    } else if (icon.contains('50')) {
      return Image.asset(
        '${weatherBaseImageAssets}mist.png',
        scale: scale,
      );
    } else {
      return Image.asset(
        '${weatherBaseImageAssets}sunny.png',
        scale: scale,
      );
    }
  } else {
    if (icon.contains("01")) {
      return Image.asset(
        '${weatherBaseImageAssets}moon.png',
        scale: scale,
      );
    } else if (icon.contains("02")) {
      return Image.asset(
        '${weatherBaseImageAssets}night_cloudy.png',
        scale: scale,
      );
    } else if (icon.contains('03')) {
      return Image.asset(
        '${weatherBaseImageAssets}cloud.png',
        scale: scale,
      );
    } else if (icon.contains('04')) {
      return Image.asset(
        '${weatherBaseImageAssets}cloud.png',
        scale: scale,
      );
    } else if (icon.contains('09')) {
      return Image.asset(
        '${weatherBaseImageAssets}rain.png',
        scale: scale,
      );
    } else if (icon.contains('10')) {
      return Image.asset(
        '${weatherBaseImageAssets}rain.png',
        scale: scale,
      );
    } else if (icon.contains('11')) {
      return Image.asset(
        '${weatherBaseImageAssets}thunderstorm.png',
        scale: scale,
      );
    } else if (icon.contains('13')) {
      return Image.asset(
        '${weatherBaseImageAssets}snow.png',
        scale: scale,
      );
    } else if (icon.contains('50')) {
      return Image.asset(
        '${weatherBaseImageAssets}mist.png',
        scale: scale,
      );
    } else {
      return Image.asset(
        '${weatherBaseImageAssets}moon.png',
        scale: scale,
      );
    }
  }
}
