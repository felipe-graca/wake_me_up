import 'package:wake_me_up/features/location/data/models/location_model.dart';

abstract interface class ILocationInternalDatasource {
  Future<LocationModel> getLocation();
}
