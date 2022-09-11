import 'package:auth/pages/sign_up/sign_up_page.dart';
import 'package:auth/stores/sign_up_store/sign_up_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:commons/helper/safe_routes.dart';

final signUpPageDI = <Bind>[
  // Bind.lazySingleton(),
  Bind.factory((i) => SignUpStore())
];

final List<ModularRoute> signUpPageRoute = [
  ChildRoute(
    SafeRoutes.signUp,
    child: (context, args) => const SignUpPage(),
    transition: TransitionType.rightToLeft,
  )
];
