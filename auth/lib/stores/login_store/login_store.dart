import 'package:auth/view_model/login_view_model/login_view_model.dart';
import 'package:mobx_triple/mobx_triple.dart';

class LoginStore extends MobXStore<Exception, LoginViewModel> {
  LoginStore() : super(LoginViewModel());
}
