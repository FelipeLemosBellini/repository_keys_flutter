import 'package:auth/module/login/login_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [...loginPageDI];

  @override
  List<ModularRoute> get routes => [...loginPageRoute];
}
