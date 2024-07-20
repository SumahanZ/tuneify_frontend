import 'package:equatable/equatable.dart';

sealed class CommonException extends Equatable implements Exception {
  final String message;
  final int? statusCode;

  const CommonException({
    required this.message,
    this.statusCode,
  });

  @override
  List<Object?> get props => [message, statusCode];
}

class ServerException extends CommonException {
  const ServerException({required super.message, super.statusCode});
}

class UnknownException extends CommonException {
  const UnknownException({required super.message, super.statusCode});
}

class SharedPreferenceException extends CommonException {
  const SharedPreferenceException({
    required super.message,
    super.statusCode,
  });
}
