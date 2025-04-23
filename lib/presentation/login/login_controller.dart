
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/service/auth_service.dart';

class LoginController extends GetxController {

  final AuthService _authService = AuthService();

  var isLoading = false.obs;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  Future<void> loginWithEmail() async {
    try {
      isLoading.value = true;
      final user = await _authService.loginWithEmail(
        emailController.text.trim(),
        passwordController.text.trim(),
      );
      if (user != null) {
        Get.snackbar("Sucesso", "Login realizado com sucesso!");
      }
    } catch (e) {
      Get.snackbar("Erro", e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> loginWithGoogle() async {
    try {
      isLoading.value = true;
      final user = await _authService.loginWithGoogle();
      if (user != null) {
        Get.snackbar("Sucesso", "Login com Google realizado!");
      }
    } catch (e) {
      Get.snackbar("Erro", e.toString());
    } finally {
      isLoading.value = false;
    }
  }


}