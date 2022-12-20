// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'predictions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Prediction _$PredictionFromJson(Map<String, dynamic> json) => Prediction(
      description: json['description'] as String?,
      matchedSubStrings: (json['matched_substrings'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      placeId: json['place_id'] as String?,
      reference: json['reference'] as String,
      structuredFormatting:
          json['structured_formatting'] as Map<String, dynamic>?,
      terms: (json['terms'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>?)
          .toList(),
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    );

Map<String, dynamic> _$PredictionToJson(Prediction instance) =>
    <String, dynamic>{
      'description': instance.description,
      'matched_substrings': instance.matchedSubStrings,
      'place_id': instance.placeId,
      'reference': instance.reference,
      'structured_formatting': instance.structuredFormatting,
      'terms': instance.terms,
      'types': instance.types,
    };
