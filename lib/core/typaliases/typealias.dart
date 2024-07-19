import 'package:fpdart/fpdart.dart';
import 'package:tuneify/core/failures/failure.dart';

typedef ResultFuture<T> = Future<Either<CommonFailure, T>>;
