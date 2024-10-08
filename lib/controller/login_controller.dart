import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  RxBool loading = false.obs;

  void loginApi() async {
    try {
      loading(true);
      final response = await post(Uri.parse('https://reqres.in/api/login'),
        body: {
          'email': emailController.value.text,
          'password': passwordController.value.text
        });

    if (response.statusCode == 200) {
      loading(false);
      Get.snackbar('Success', 'Login Success');
    } else {
      loading(false);
      Get.snackbar('Error', 'Login Failed');
    }
    } catch (e) {
      loading(false);
      Get.snackbar('Error', e.toString());
    }
  }
}
