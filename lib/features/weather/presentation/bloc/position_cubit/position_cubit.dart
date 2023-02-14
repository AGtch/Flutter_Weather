import 'package:bloc/bloc.dart';
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
}
