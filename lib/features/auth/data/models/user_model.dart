import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:tuneify/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity implements Equatable {
  const UserModel({
    required super.name,
    required super.email,
    required super.password,
  });

  UserEntity copyWith({
    String? name,
    String? email,
    String? password,
  }) {
    return UserEntity(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'password': password,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;
}
