part of 'location_cubit.dart';

class LocationState extends Equatable {
  final LatLngEntity currentLocation;

  const LocationState({
    this.currentLocation = const LatLngEntity(),
  });

  @override
  List<Object?> get props => [currentLocation];
}
