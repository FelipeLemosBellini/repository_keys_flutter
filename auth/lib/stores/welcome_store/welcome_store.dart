import 'package:auth/view_model/welcome_view_model/welcome_view_model.dart';
import 'package:mobx_triple/mobx_triple.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:commons/commons.dart';

class WelcomeStore extends MobXStore<SafeException, WelcomeViewModel> {
  WelcomeStore() : super(WelcomeViewModel());

  @override
  void initStore() {
    super.initStore();
  }

  void goToLoginPage() => Modular.to.pushNamed(SafeRoutes.signIn);

  void goToSignUpPage() => Modular.to.pushNamed(SafeRoutes.signUp);
}
