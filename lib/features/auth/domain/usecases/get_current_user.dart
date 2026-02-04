import '/../core/errors/failure.dart';
import '/../core/usecase/usecase.dart';
import '/../features/auth/domain/entities/user.dart';
import '/../features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'dart:async';  
class GetCurrentUser implements UseCase<User, NoParams> {
  final AuthRepository repository;

  GetCurrentUser(this.repository);

  @override
  FutureOr<Either<Failure, User>> call(NoParams params) async {
    return await repository.getCurrentUser();
  }
}