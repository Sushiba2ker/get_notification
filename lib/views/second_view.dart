import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class SecondView extends GetView<HomeController> {
  const SecondView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
              'Count from Home: ${controller.count}',
              style: const TextStyle(fontSize: 20),
            )),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                controller.updateMessage('Updated from Second Page');
                Get.back();
              },
              child: const Text('Update Message and Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}