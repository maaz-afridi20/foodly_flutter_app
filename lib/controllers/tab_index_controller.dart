import 'package:get/get.dart';

class TabIndexControlelr extends GetxController {
  static TabIndexControlelr get instance => Get.find();

  final RxInt _tabIndex = 0.obs;
  int get tabIndex => _tabIndex.value;

  set setTabIndex(int newValue) {
    _tabIndex.value = newValue;
  }
}
