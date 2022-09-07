import 'package:core/model/auth_model.dart';
import 'package:external_dependencies/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthRepository {
  Future<Either<FirebaseAuthException, void>> login(AuthModel loginModel);

  Future<Either<FirebaseAuthException, void>> signUp(AuthModel loginModel);

  Future<Either<FirebaseAuthException, void>> forgotPassword(AuthModel loginModel);
}
