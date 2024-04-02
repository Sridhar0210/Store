import 'package:get_storage/get_storage.dart';

class StoreLocalStorage {
  static final StoreLocalStorage _instance = StoreLocalStorage._internal();

  factory StoreLocalStorage() {
    return _instance;
  }
  StoreLocalStorage._internal();

  final _storage = GetStorage();

  // save data in local storage
  Future<void> saveData<store>(String key, store value) async {
    await _storage.write(key, value);
  }

// remove data in local storage
  Future<void> removeData<store>(String key) async {
    await _storage.remove(key);
  }

// clear all data in local storage
  Future<void> clearAll<store>() async {
    await _storage.erase();
  }

  // Read data in local storage
  store? readData<store>(String key) {
    return _storage.read<store>(key);
  }
}
