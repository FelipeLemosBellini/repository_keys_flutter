import 'package:auth/pages/forgot_password/forgot_password_page.dart';
import 'package:auth/stores/forgot_password_store/forgot_password_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:commons/helper/safe_routes.dart';

final forgotPasswordPageDI = <Bind>[
  // Bind.lazySingleton(),
  Bind.factory((i) => ForgotPasswordStore())
];

final List<ModularRoute> forgotPasswordPageRoute = [
  ChildRoute(
    SafeRoutes.forgotPasswordPage,
    child: (context, args) => const ForgotPasswordPage(),
    transition: TransitionType.rightToLeft,
  )
];
