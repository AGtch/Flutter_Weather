import 'package:json_annotation/json_annotation.dart';

part 'error_model.g.dart';

@JsonSerializable()
class ErrorModel {
  @JsonKey(name: 'cod')
  String? statusCode;
  @JsonKey(name: 'message')
  String? errorMessage;

  ErrorModel(this.statusCode, this.errorMessage);

  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);
}
