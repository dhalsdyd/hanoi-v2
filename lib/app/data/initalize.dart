import 'package:hanoi_v2/app/data/controllers/lifecycle.dart';
import 'package:get/get.dart';

class AppInitalizer {
  Future<void> init() async {
    Get.put<LifeCycleController>(LifeCycleController());
    // await Get.putAsync<DatabaseController>(() => DatabaseController().init());
    // await Get.putAsync<AuthController>(() => AuthController().init());
  }
}
