abstract class IStorageException implements Exception {
  final String message;

  IStorageException({required this.message});
}

class StorageException implements IStorageException {
  @override
  final String message;

  StorageException({required this.message});
}
