// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wake_me_up/features/location/data/models/location_model.dart';
import 'package:wake_me_up/features/location/domain/entities/lat_lng_entity.dart';

class LocationEntity extends LocationModel with EquatableMixin {
  LocationEntity({
    String name = '',
    TimeOfDay timeToWakeUp = const TimeOfDay(hour: 0, minute: 0),
    LatLngEntity latLng = const LatLngEntity(),
  }) : super(name: name, timeToWakeUp: timeToWakeUp, latLng: latLng);

  @override
  List<Object?> get props => [latLng, name, timeToWakeUp];

  LocationEntity copyWith({
    String? name,
    TimeOfDay? timeToWakeUp,
    LatLngEntity? latLng,
  }) {
    return LocationEntity(
      name: name ?? this.name,
      timeToWakeUp: timeToWakeUp ?? this.timeToWakeUp,
      latLng: latLng ?? LatLngEntity.fromModel(this.latLng),
    );
  }

  //from Model
  factory LocationEntity.fromModel(LocationModel model) {
    return LocationEntity(
      name: model.name,
      timeToWakeUp: model.timeToWakeUp,
      latLng: LatLngEntity.fromModel(model.latLng),
    );
  }
}
