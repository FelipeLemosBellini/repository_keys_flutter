import 'package:auth/view_model/sign_up_view_model/sign_up_view_model.dart';
import 'package:commons/commons.dart';
import 'package:mobx_triple/mobx_triple.dart';

class SignUpStore extends MobXStore<SafeException, SignUpViewModel> {
  SignUpStore() : super(SignUpViewModel());

  void changeCheckBox(newValue) {
    state.isChecked = !newValue;
    execute(() async => state);
  }

  Future<void> signUp() async {}
}
