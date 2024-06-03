abstract interface class IStorageService {
  Future<void> delete(String key);
  Future<String?> read(String key);
  Future<void> write(String key, String value);
  Future<void> clear();
}
