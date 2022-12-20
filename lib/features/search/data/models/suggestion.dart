import 'package:flutter_weather/features/search/data/models/predictions_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'suggestion.g.dart';

@JsonSerializable()
class Suggestion {
  List<Prediction> predictions;
  String status;

  Suggestion({required this.predictions, required this.status});

  factory Suggestion.fromJson(Map<String, dynamic> json) =>
      _$SuggestionFromJson(json);

  Map<String, dynamic> toJson() => _$SuggestionToJson(this);
}
