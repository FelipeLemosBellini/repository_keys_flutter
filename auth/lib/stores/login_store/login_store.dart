import 'package:auth/view_model/login_view_model/login_view_model.dart';
import 'package:commons/commons.dart';
import 'package:mobx_triple/mobx_triple.dart';

class LoginStore extends MobXStore<SafeException, LoginViewModel> {
  LoginStore() : super(LoginViewModel());

  Future<void> sign({required String email, required String password}) async {}
}
