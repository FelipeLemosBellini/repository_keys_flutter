import 'package:auth/module/login/login_module.dart';
import 'package:auth/module/welcome/welcome_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [...loginPageDI, ...welcomePageDI];

  @override
  List<ModularRoute> get routes => [...loginPageRoute, ...welcomePageRoute];
}
