import 'package:get/get.dart';

class MainController extends GetxController {
  final currentIndex = 0.obs;

  final title = 'Home'.obs;

  @override
  void onInit() {
    super.onInit();

    final args = Get.arguments;
    if (args != null && args['tabIndex'] != null) {
      changeIndex(args['tabIndex']);
    }
  }

  void changeIndex(int index) {
    currentIndex.value = index;

    title.value = switch (index) {
      0 => 'Home',
      1 => 'Inventory',
      2 => 'Transaction',
      3 => 'Reporting',
      4 => 'Profile',
      _ => 'Home',
    };
  }
}
