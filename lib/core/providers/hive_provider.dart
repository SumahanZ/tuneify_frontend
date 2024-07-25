import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

final hiveServiceProvider = Provider((ref) => HiveService());

class HiveService {
  T getEntity<T>({required String key, required String boxName}) {
    final box = Hive.box(name: boxName);
    return box.get(key);
  }

  Box getBox(String boxName) {
    return Hive.box(name: boxName);
  }

  void createUpdateEntity<T>({
    required String key,
    required String boxName,
    required T data,
  }) {
    final box = Hive.box(name: boxName);

    box.put(key, data);
  }

  void deleteEntity({
    required String key,
    required String boxName,
  }) {
    final box = Hive.box(name: boxName);
    box.delete(key);
  }
}
