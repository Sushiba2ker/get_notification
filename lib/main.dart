import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './controllers/form_controlller.dart';
import 'views/form_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Form Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        ),
      ),
      initialBinding: BindingsBuilder(() {
        Get.put(FormController());
      }),
      home: const FormView(),
    );
  }
}