import 'package:dartz/dartz.dart';
import 'dart:async';
import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/auth_repository.dart';

class ForgetPasswordUser implements UseCase<void, String> {
  final AuthRepository repository;

  ForgetPasswordUser(this.repository);

  @override
  FutureOr<Either<Failure, void>> call(String email) async {
    return await repository.forgetPassword(email: email);
  }
}