import 'package:get/get.dart';

class HomeController extends GetxController {
  var count = 0.obs;
  var message = 'Hello GetX'.obs;

  void increment() {
    count++;
    showNotification('Counter Updated', 'New count is: ${count.value}');
  }

  void updateMessage(String newMessage) {
    message.value = newMessage;
  }

  void showNotification(String title, String message) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}