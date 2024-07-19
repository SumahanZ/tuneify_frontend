import 'package:fpdart/fpdart.dart';
import 'package:tuneify/core/exceptions/failure.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;
