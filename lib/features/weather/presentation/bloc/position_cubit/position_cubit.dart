import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

part 'position_state.dart';

class PositionCubit extends Cubit<PositionState> {
  PositionCubit() : super(PositionInitial());

  // void getCurrentLocation() async {
  //   bool isServiceEnabled = await Geolocator.isLocationServiceEnabled();
  //   if (!isServiceEnabled) {
  //     emit(PositionPermissionDeny());
  //     await Geolocator.requestPermission();
  //   } else {
  //     Geolocator.getCurrentPosition(
  //       desiredAccuracy: LocationAccuracy.high,
  //       forceAndroidLocationManager: true,
  //     ).then((position) {
  //       emit(PositionReady(position));
  //     });
  //   }
  // }

  void handleLocationPermission(context) async {
    bool serviceEnabled;
    Position position;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      emit(PositionPermissionDeny());
      LocationPermission locationPermission =
          await Geolocator.requestPermission();
      if (locationPermission == LocationPermission.denied ||
          locationPermission == LocationPermission.deniedForever ||
          serviceEnabled != false) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.red,
            content: Text(
                'Location services are disabled. Please enable the services'),
          ),
        );
      }
    }
    position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    emit(PositionReady(position));
  }
}
