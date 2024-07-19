import 'package:flutter_riverpod/flutter_riverpod.dart';

final authLocalDataSourceProvider =
    Provider((ref) => AuthLocalDataSourceImpl());

abstract class AuthLocalDataSource {}

class AuthLocalDataSourceImpl extends AuthLocalDataSource {}
