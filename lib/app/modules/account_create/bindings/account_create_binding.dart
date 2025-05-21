import 'package:get/get.dart';

import '../controllers/account_create_controller.dart';

class AccountCreateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountCreateController>(
      () => AccountCreateController(),
    );
  }
}
