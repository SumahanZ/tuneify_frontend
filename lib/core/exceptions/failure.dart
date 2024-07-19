import 'package:equatable/equatable.dart';
import 'package:tuneify/core/exceptions/exception.dart';

abstract class Failure extends Equatable {
  final String errorMessage;
  final int? statusCode;

  const Failure({
    required this.errorMessage,
    this.statusCode,
  });

  String get message => "$statusCode Error: $errorMessage";

  @override
  List<Object> get props => [errorMessage];
}

class ServerFailure extends Failure {
  const ServerFailure({required super.errorMessage, super.statusCode});

  factory ServerFailure.fromException(CommonException exception) {
    return ServerFailure(
      errorMessage: exception.message,
      statusCode: exception.statusCode,
    );
  }
}

class UnknownFailure extends Failure {
  const UnknownFailure({required super.errorMessage});

  factory UnknownFailure.fromException(CommonException exception) {
    return UnknownFailure(
      errorMessage: exception.message,
    );
  }
}
