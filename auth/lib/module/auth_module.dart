import 'package:auth/module/forgot_password/forgot_password_module.dart';
import 'package:auth/module/login/login_module.dart';
import 'package:auth/module/sign_up/sign_up_module.dart';
import 'package:auth/module/welcome/welcome_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [
        ...loginPageDI,
        ...welcomePageDI,
        ...signUpPageDI,
        ...forgotPasswordPageDI,
      ];

  @override
  List<ModularRoute> get routes => [
        ...loginPageRoute,
        ...welcomePageRoute,
        ...signUpPageRoute,
        ...forgotPasswordPageRoute,
      ];
}
