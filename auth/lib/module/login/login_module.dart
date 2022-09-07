import 'package:auth/pages/login_page/login_page.dart';
import 'package:auth/stores/login_store/login_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:commons/helper/safe_routes.dart';

final loginPageDI = <Bind>[
  // Bind.lazySingleton(),
  Bind.factory((i) => LoginStore())
];

final List<ModularRoute> loginPageRoute = [
  ChildRoute(
    SafeRoutes.signIn,
    child: (context, args) => const LoginPage(),
    transition: TransitionType.rightToLeft,
  )
];
