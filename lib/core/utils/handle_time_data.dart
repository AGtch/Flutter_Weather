import 'package:intl/intl.dart';

String getCurrentTime(DateTime time) {
  return DateFormat().add_jm().format(time);
}

String getCurrentDate(DateTime date) {
  return DateFormat.yMMMd().format(date).toString();
}

String getNameOfDay(DateTime date) {
  return DateFormat('EEEE').format(date);

  /// e.g Thursday
}
