import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wake_me_up/core/services/storage/i_storage_service.dart';
import 'package:wake_me_up/core/services/storage/storage_service.dart';

class LocatorInjections {
  static Future<void> _setup() async {
    final i = GetIt.instance;

    //packages
    i.registerSingleton(await SharedPreferences.getInstance());

    //services
    i.registerLazySingleton<IStorageService>(() => StorageService(sharedPreferences: i.get()));
  }

  static Future<void> setupFeaturesLocations() async {
    await _setup().then((value) {
      //features
    });

    GetIt.I.isReady();
  }
}
