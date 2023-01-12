import 'package:auth/pages/welcome_page/welcome_page.dart';
import 'package:auth/stores/welcome_store/welcome_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:commons/helper/safe_routes.dart';

final welcomePageDI = <Bind>[
  // Bind.lazySingleton(),
  Bind.factory((i) => WelcomeStore())
];

final List<ModularRoute> welcomePageRoute = [
  ChildRoute(
    SafeRoutes.welcome,
    child: (context, args) => const WelcomePage(),
    transition: TransitionType.noTransition,
  )
];
