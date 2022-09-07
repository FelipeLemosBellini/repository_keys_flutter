import 'package:core/helper/dio_helper.dart';
import 'package:core/model/auth_model.dart';
import 'package:core/repository/auth_repository/auth_interface.dart';
import 'package:external_dependencies/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository implements IAuthRepository {
  final auth = FirebaseAuth.instance;

  @override
  Future<Either<FirebaseAuthException, void>> login(AuthModel loginModel) async {
    return executeWithCatch<void>(() async {
      await auth.signOut();
      await auth.signInWithEmailAndPassword(email: loginModel.email!, password: loginModel.password!);
    });
  }

  @override
  Future<Either<FirebaseAuthException, void>> signUp(AuthModel loginModel) async {
    return executeWithCatch<void>(() async {
      await auth.signOut();
      await auth.createUserWithEmailAndPassword(email: loginModel.email!, password: loginModel.password!);
    });
  }

  @override
  Future<Either<FirebaseAuthException, void>> forgotPassword(AuthModel loginModel) {
    return executeWithCatch<void>(() async {
      await auth.sendPasswordResetEmail(email: loginModel.email!);
    });
  }
}
