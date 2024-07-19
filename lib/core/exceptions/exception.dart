import 'package:equatable/equatable.dart';

sealed class CommonException extends Equatable implements Exception {
  final String message;
  final int statusCode;
  final Object? error;

  const CommonException({
    required this.message,
    required this.statusCode,
    this.error,
  });

  @override
  List<Object?> get props => [message, statusCode, error];
}

class ServerException extends CommonException {
  const ServerException({required super.message, required super.statusCode});
}

class UnknownException extends CommonException {
  const UnknownException({required super.message, required super.statusCode});
}
