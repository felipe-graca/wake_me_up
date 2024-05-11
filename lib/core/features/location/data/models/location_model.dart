// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class LocationModel {
  final String name;
  final TimeOfDay timeToWakeUp;
  final double latitude;
  final double longitude;

  LocationModel({
    this.name = '',
    this.timeToWakeUp = const TimeOfDay(hour: 0, minute: 0),
    this.latitude = 0,
    this.longitude = 0,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'timeToWakeUp': timeToWakeUp,
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  factory LocationModel.fromMap(Map<String, dynamic> map) {
    return LocationModel(
      name: map['name'] as String,
      timeToWakeUp: map['timeToWakeUp'] as TimeOfDay,
      latitude: (map['latitude'] ?? '') as double,
      longitude: (map['longitude'] ?? '') as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory LocationModel.fromJson(String source) =>
      LocationModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
