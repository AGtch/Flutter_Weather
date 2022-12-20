import 'package:freezed_annotation/freezed_annotation.dart';

part 'predictions_model.g.dart';

@JsonSerializable()
class Prediction {
  String? description;
  @JsonKey(name: 'matched_substrings')
  List<Map<String, dynamic>> matchedSubStrings;
  @JsonKey(name: 'place_id')
  String? placeId;

  String reference;
  @JsonKey(name: 'structured_formatting')
  Map<String, dynamic>? structuredFormatting;

  List<Map<String, dynamic>?>? terms;
  List<String?>? types;

  Prediction({
    required this.description,
    required this.matchedSubStrings,
    required this.placeId,
    required this.reference,
    required this.structuredFormatting,
    required this.terms,
    required this.types,
  });

  factory Prediction.fromJson(Map<String, dynamic> json) =>
      _$PredictionFromJson(json);

  Map<String, dynamic> toJson() => _$PredictionToJson(this);
}
