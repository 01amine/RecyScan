import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/auth_repository.dart';
import 'dart:async';

class ClearToken implements UseCase<void, NoParams> {
  final AuthRepository repository;

  ClearToken(this.repository);

  @override
  FutureOr<Either<Failure, void>> call(NoParams params) async {
    return await repository.clearToken();
  }
}