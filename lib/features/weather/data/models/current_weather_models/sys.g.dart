// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sys.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sys _$SysFromJson(Map<String, dynamic> json) => Sys(
      (json['id'] as num?)?.toDouble(),
      json['country'] as String?,
      (json['sunrise'] as num?)?.toDouble(),
      (json['sunset'] as num?)?.toDouble(),
      (json['type'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SysToJson(Sys instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'country': instance.country,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };
