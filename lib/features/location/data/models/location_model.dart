// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:wake_me_up/features/location/data/models/lat_lng_model.dart';

class LocationModel {
  final String name;
  final TimeOfDay timeToWakeUp;
  final LatLngModel latLng;

  LocationModel({
    this.name = '',
    this.timeToWakeUp = const TimeOfDay(hour: 0, minute: 0),
    this.latLng = const LatLngModel(),
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'timeToWakeUp': timeToWakeUp,
      'latLng': latLng.toMap(),
    };
  }

  factory LocationModel.fromMap(Map<String, dynamic> map) {
    return LocationModel(
      name: map['name'] as String,
      timeToWakeUp: map['timeToWakeUp'] as TimeOfDay,
      latLng: LatLngModel.fromMap(map['latLng'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory LocationModel.fromJson(String source) =>
      LocationModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
