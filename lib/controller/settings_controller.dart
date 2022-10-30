import 'package:get/get.dart';

class SettingsController extends GetxController {
  String? savedSearch;

  @override
  void onInit() {
    savedSearch = Get.arguments['name'];
    super.onInit();
  }
}
