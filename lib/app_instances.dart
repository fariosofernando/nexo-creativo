import 'app_global_store.dart';

class AppInstances {
  AppInstances._();
  static final AppInstances instance = AppInstances._();

  static final _globalStore = AppGlobalStore();
  AppGlobalStore get globalStore => _globalStore;
}
