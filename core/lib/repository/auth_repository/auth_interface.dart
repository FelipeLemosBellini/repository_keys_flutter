import 'package:core/model/login_model.dart';
import 'package:external_dependencies/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthRepository {
  Future<Either<FirebaseAuthException, void>> login(LoginModel loginModel);

  Future<Either<FirebaseAuthException, void>> forgotPassword(LoginModel loginModel);
}
