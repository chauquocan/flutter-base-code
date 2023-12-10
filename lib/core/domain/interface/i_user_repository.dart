import 'package:fpdart/fpdart.dart';
import 'package:flutter_base_code/core/domain/model/failure.dart';
import 'package:flutter_base_code/core/domain/model/user.dart';

abstract interface class IUserRepository {
  Future<Either<Failure, User>> get user;
}
