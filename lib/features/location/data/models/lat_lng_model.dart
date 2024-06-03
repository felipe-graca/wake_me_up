import 'package:google_maps_flutter/google_maps_flutter.dart';

class LatLngModel extends LatLng {
  const LatLngModel({
    double latitude = 0.0,
    double longitude = 0.0,
  }) : super(latitude, longitude);

  LatLngModel copyWith({
    double? latitude,
    double? longitude,
  }) {
    return LatLngModel(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  factory LatLngModel.fromMap(Map<String, dynamic> map) {
    return LatLngModel(
      latitude: (map['latitude'] ?? '') as double,
      longitude: (map['longitude'] ?? '') as double,
    );
  }
}
