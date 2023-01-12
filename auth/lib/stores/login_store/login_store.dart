import 'package:auth/view_model/login_view_model/login_view_model.dart';
import 'package:commons/commons.dart';
import 'package:mobx_triple/mobx_triple.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginStore extends MobXStore<SafeException, LoginViewModel> {
  LoginStore() : super(LoginViewModel());

  Future<void> sign() async {}

  Future<void> forgotPassword() async => Modular.to.pushNamed(SafeRoutes.forgotPasswordPage);
}
