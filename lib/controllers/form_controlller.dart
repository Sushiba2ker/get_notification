import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormController extends GetxController {
  var fullName = ''.obs;
  var email = ''.obs;
  var phone = ''.obs;
  var address = ''.obs;

  final formKey = GlobalKey<FormState>();

  void submitForm() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      
      // Hiển thị thông báo thành công
      Get.snackbar(
        'Thành công',
        'Đã lưu thông tin:\nHọ tên: ${fullName.value}\nEmail: ${email.value}\nSĐT: ${phone.value}\nĐịa chỉ: ${address.value}',
        duration: const Duration(seconds: 3),
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.green.shade100,
      );
    }
  }

  String? validateFullName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Vui lòng nhập họ tên';
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Vui lòng nhập email';
    }
    if (!GetUtils.isEmail(value)) {
      return 'Email không hợp lệ';
    }
    return null;
  }

  String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Vui lòng nhập số điện thoại';
    }
    if (!GetUtils.isPhoneNumber(value)) {
      return 'Số điện thoại không hợp lệ';
    }
    return null;
  }
}