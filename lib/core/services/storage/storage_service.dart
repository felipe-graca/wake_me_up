import 'package:shared_preferences/shared_preferences.dart';
import 'package:wake_me_up/core/services/storage/i_storage_service.dart';

class StorageService implements IStorageService {
  final SharedPreferences sharedPreferences;

  StorageService({required this.sharedPreferences});

  @override
  Future<void> delete(String key) async {
    await sharedPreferences.remove(key);
  }

  @override
  Future<String?> read(String key) async {
    return sharedPreferences.getString(key);
  }

  @override
  Future<void> write(String key, String value) async {
    await sharedPreferences.setString(key, value);
  }

  @override
  Future<void> clear() async {
    await sharedPreferences.clear();
  }
}
