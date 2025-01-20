import 'package:get/get.dart';

class MainScreenController extends GetxController {
  var currentIndex = 0.obs; // Reactive index

  // Update the index
  void changeScreen(int index) {
    currentIndex.value = index;
  }
}