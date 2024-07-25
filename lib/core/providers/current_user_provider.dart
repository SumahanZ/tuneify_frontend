import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuneify/features/auth/domain/entities/user_entity.dart';

final currentUserProvider = StateProvider<UserEntity?>((ref) => null);
