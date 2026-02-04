import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'dart:async';
import '../errors/failure.dart';


abstract class UseCase<Type, Params> {
  FutureOr<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}