import 'package:dartz/dartz.dart';
import 'dart:async';  
import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/auth_repository.dart';

class SaveToken implements UseCase<void, String> {
  final AuthRepository repository;

  SaveToken(this.repository);

  @override
  FutureOr<Either<Failure, void>> call(String token) async {
    return await repository.saveToken(token);
  }
}