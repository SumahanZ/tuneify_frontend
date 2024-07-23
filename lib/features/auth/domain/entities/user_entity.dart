import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class UserEntity extends Equatable {
  final String name;
  final String email;
  final String id;

  const UserEntity({
    required this.name,
    required this.email,
    required this.id,
  });

  @override
  List<Object> get props => [name, email, id];
}
