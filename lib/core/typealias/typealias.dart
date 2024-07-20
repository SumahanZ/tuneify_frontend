import 'package:fpdart/fpdart.dart';
import 'package:tuneify/core/failure/failure.dart';

typedef ResultFuture<T> = Future<Either<CommonFailure, T>>;
