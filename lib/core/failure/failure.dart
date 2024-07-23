import 'package:equatable/equatable.dart';
import 'package:tuneify/core/exception/exception.dart';

abstract class CommonFailure extends Equatable {
  final String errorMessage;
  final int? statusCode;

  const CommonFailure({
    required this.errorMessage,
    this.statusCode,
  });

  String get message => "$statusCode Error: $errorMessage";

  @override
  List<Object> get props => [
        errorMessage,
      ];
}

class ServerFailure extends CommonFailure {
  const ServerFailure({required super.errorMessage, super.statusCode});

  factory ServerFailure.fromException(CommonException exception) {
    return ServerFailure(
      errorMessage: exception.message,
      statusCode: exception.statusCode,
    );
  }
}

class UnknownFailure extends CommonFailure {
  const UnknownFailure({required super.errorMessage});

  factory UnknownFailure.fromException(CommonException exception) {
    return UnknownFailure(
      errorMessage: exception.message,
    );
  }
}

class SharedPreferenceFailure extends CommonFailure {
  const SharedPreferenceFailure({required super.errorMessage});

  factory SharedPreferenceFailure.fromException(CommonException exception) {
    return SharedPreferenceFailure(
      errorMessage: exception.message,
    );
  }
}

class HiveFailure extends CommonFailure {
  const HiveFailure({required super.errorMessage});

  factory HiveFailure.fromException(CommonException exception) {
    return HiveFailure(
      errorMessage: exception.message,
    );
  }
}
