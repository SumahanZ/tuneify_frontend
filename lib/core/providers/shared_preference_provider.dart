import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import 'package:tuneify/core/exception/exception.dart';

final sharedPrefProvider = Provider((ref) => SharedPrefService());

class SharedPrefService {
  Future<T> read<T>(String key) async {
    final prefs = await SharedPreferences.getInstance();

    if (prefs.getString(key) == "" || prefs.getString(key) == null) {
      throw SharedPreferenceException(
        message: 'Failed to retrieve object of key $key',
      );
    }

    return json.decode(prefs.getString(key) ?? "");
  }

  void save(String key, value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, json.encode(value));
  }

  void remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }
}
