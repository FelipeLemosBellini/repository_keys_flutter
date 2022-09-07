import 'package:flutter_modular/flutter_modular.dart';
import 'package:safe_zone/module/home_safe/home_safe_module.dart';

class SafeZoneModule extends Module {
  @override
  List<Bind> get binds => [...homePageDI];

  @override
  List<ModularRoute> get routes => [...homePageRoute];
}
