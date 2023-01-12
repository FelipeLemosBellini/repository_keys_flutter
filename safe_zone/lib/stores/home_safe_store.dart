import 'package:commons/commons.dart';
import 'package:safe_zone/view_model/home_safe_view_model.dart';
import 'package:mobx_triple/mobx_triple.dart';

class HomeSafeStore extends MobXStore<SafeException, HomeSafeViewModel> {
  HomeSafeStore() : super(HomeSafeViewModel());
}
