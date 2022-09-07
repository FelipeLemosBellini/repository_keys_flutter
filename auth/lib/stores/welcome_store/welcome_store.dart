import 'package:auth/view_model/welcome_view_model/welcome_view_model.dart';
import 'package:commons/helper/safe_routes.dart';
import 'package:mobx_triple/mobx_triple.dart';
import 'package:flutter_modular/flutter_modular.dart';

class WelcomeStore extends MobXStore<Exception, WelcomeViewModel> {
  WelcomeStore() : super(WelcomeViewModel());

  void goToLoginPage() => Modular.to.pushNamed(SafeRoutes.signIn);

  void goToSignUpPage() => Modular.to.pushNamed(SafeRoutes.signUp);
}
