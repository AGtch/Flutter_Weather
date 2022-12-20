import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_weather/features/weather/data/models/handle_weather_response.dart';

import '../../../../../core/utils/constance/colors.dart';
import '../../../../../injector.dart';
import '../../../../search/presentation/bloc/google_auto_complete_cubit.dart';
import '../../../../search/presentation/screen/search.dart';
import '../../bloc/hourly_forecast/hourly_forecast_cubit.dart';
import '../../bloc/weather_cubit/weather_cubit.dart';

AppBar getAppBar({
  required WeatherHandleResponse weatherHandleResponse,
  required BuildContext buildContext,
}) {
  return AppBar(
    elevation: 0,
    backgroundColor: getIt.get<AppColor>().getBackgroundColorLightMode(),
    title: Text(
      weatherHandleResponse.cityName!,
      style: TextStyle(
        fontSize: 20.sp,
        color: getIt.get<AppColor>().getTextColorLightMode(),
      ),
    ),
    actions: [
      BlocProvider<GoogleAutoCompleteCubit>(
        create: (context) => BlocProvider.of<GoogleAutoCompleteCubit>(context),
        child: IconButton(
          icon: Icon(Icons.search, size: 28.sp),
          onPressed: () async {
            // getIt.get<GoogleAutoCompleteCubit>().getPlacesSuggestions();
            dynamic result = await showSearch(
                context: buildContext,
                delegate: SearchScreen(getIt.get<GoogleAutoCompleteCubit>()));
            Map<String, dynamic> query = {
              'q': result.terms[0].values.last.toString(),
            };
            //
            BlocProvider.of<WeatherCubit>(buildContext)
                .getWeather(query: query);
            BlocProvider.of<HourlyForecastCubit>(buildContext)
                .getHourlyForecastCubit(query: query);

            print("====================$result==================");
          },
          color: getIt.get<AppColor>().getIconColorLightMode(),
        ),
      ),
      SizedBox(
        width: 8.w,
      ),
      Icon(
        Icons.more_vert_rounded,
        size: 28.sp,
        color: getIt.get<AppColor>().getIconColorLightMode(),
      ),
    ],
  );
}
