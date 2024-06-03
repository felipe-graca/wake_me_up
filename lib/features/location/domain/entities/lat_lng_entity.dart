import 'package:equatable/equatable.dart';
import 'package:wake_me_up/features/location/data/models/lat_lng_model.dart';

class LatLngEntity extends LatLngModel with EquatableMixin {
  const LatLngEntity({
    double latitude = 0.0,
    double longitude = 0.0,
  }) : super(latitude: latitude, longitude: longitude);

  @override
  LatLngEntity copyWith({
    double? latitude,
    double? longitude,
  }) {
    return LatLngEntity(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  @override
  List<Object?> get props => [latitude, longitude];

  //from Model
  factory LatLngEntity.fromModel(LatLngModel model) {
    return LatLngEntity(
      latitude: model.latitude,
      longitude: model.longitude,
    );
  }
}
