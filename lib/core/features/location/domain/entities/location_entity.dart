// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wake_me_up/core/features/location/data/models/location_model.dart';

class LocationEntity extends LocationModel with EquatableMixin {
  LocationEntity({
    String name = '',
    TimeOfDay timeToWakeUp = const TimeOfDay(hour: 0, minute: 0),
    double latitude = 0,
    double longitude = 0,
  }) : super(latitude: latitude, longitude: longitude, name: name, timeToWakeUp: timeToWakeUp);

  @override
  List<Object?> get props => [latitude, longitude, name, timeToWakeUp];

  LocationEntity copyWith({
    String? name,
    TimeOfDay? timeToWakeUp,
    double? latitude,
    double? longitude,
  }) {
    return LocationEntity(
      name: name ?? this.name,
      timeToWakeUp: timeToWakeUp ?? this.timeToWakeUp,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  factory LocationEntity.fromModel(LocationModel model) {
    return LocationEntity(
      name: model.name,
      timeToWakeUp: model.timeToWakeUp,
      latitude: model.latitude,
      longitude: model.longitude,
    );
  }
}
