import 'package:flutter_modular/flutter_modular.dart';
import 'package:commons/helper/keys_routes.dart';
import 'package:safe_zone/pages/home_safe_page.dart';
import 'package:safe_zone/stores/home_safe_store.dart';

final homePageDI = <Bind>[
  // Bind.lazySingleton(),
  Bind.factory((i) => HomeSafeStore())
];

final List<ModularRoute> homePageRoute = [
  ChildRoute(
    SafeZoneRoutes.homeSafe,
    child: (context, args) => const HomeSafePage(),
    transition: TransitionType.rightToLeft,
  )
];
