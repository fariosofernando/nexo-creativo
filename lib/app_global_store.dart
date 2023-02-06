import 'package:mobx/mobx.dart';

part 'app_global_store.g.dart';

class AppGlobalStore = AppGlobalStoreBase with _$AppGlobalStore;

abstract class AppGlobalStoreBase with Store {
  @observable
  bool darkModeActivated = false;

  @action
  Future<void> changeActualTheme() async {
    darkModeActivated = !darkModeActivated;
  }

  @observable
  num page = 0;

  @observable
  num testimonialPage = 0;

  @observable
  num currentPage = 0;
}
