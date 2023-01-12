import 'package:auth/view_model/forgot_password_view_model/forgot_password_view_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx_triple/mobx_triple.dart';
import 'package:commons/commons.dart';

class ForgotPasswordStore extends MobXStore<SafeException, ForgotPasswordViewModel> {
  ForgotPasswordStore() : super(ForgotPasswordViewModel());

  @override
  void initStore() {
    super.initStore();
  }

  void sendEmail() => Modular.to.pop();
}
