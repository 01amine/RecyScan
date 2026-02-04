import 'dart:async';

import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/auth_repository.dart';

class DeleteUser implements UseCase<void, String> {
  final AuthRepository repository;

  DeleteUser(this.repository);

  @override
  FutureOr<Either<Failure, void>> call( id) {
    return repository.deleteUser(id);
  }
}