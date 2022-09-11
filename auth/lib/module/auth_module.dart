import 'package:auth/module/login/login_module.dart';
import 'package:auth/module/sign_up/sign_up_module.dart';
import 'package:auth/module/welcome/welcome_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [...loginPageDI, ...welcomePageDI, ...signUpPageDI];

  @override
  List<ModularRoute> get routes => [...loginPageRoute, ...welcomePageRoute, ...signUpPageRoute];
}
