import 'package:auth/module/auth_module.dart';
import 'package:auth/module/login/login_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [...loginPageDI];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(Modular.initialRoute, module: AuthModule()),
        // ModuleRoute(Modular.initialRoute, module: SafeZoneModule())
      ];
}
