import 'package:flutter/material.dart';
import 'package:flutter_instagram/src/components/app_textfield.dart';
import 'package:flutter_instagram/src/presentations/auth/controllers/auth_controller.dart';
import 'package:flutter_instagram/src/router/app_router.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends GetWidget<AuthController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Text("Instagram", style: GoogleFonts.lobster(fontSize: 32)),
              const SizedBox(height: 8),
              TextFieldCustom(
                  labelText: "Số điện thoại, email hoặc tên người dùng",
                  controller: controller.username.value),
              //const SizedBox(height: 8),
              TextFieldCustom(
                  labelText: "Mật khẩu",
                  obscureText: controller.hidePass.value,
                  suffixIcon: GestureDetector(
                      onTap: () {
                        controller.hidePass.value =
                            !controller.hidePass.value;
                      },
                      child: controller.hidePass.value == true
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility)),
                  controller: controller.password.value),
              //const SizedBox(height: 8),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24,vertical: 8),
                width: Get.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                  ),
                  onPressed: () {
                    controller.handleLogin();
                  },
                  child: const Text("Đăng nhập"),
                ),
              ),
              Wrap(
                children: [
                  Text.rich(
                    TextSpan(
                      text:
                          "Bạn quên mật khẩu ư? ", //"Bạn quên tên đăng nhập ư? ",
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                      children: [
                        TextSpan(
                            text: "Nhận trợ giúp đăng nhập.",
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.all(24),
                width: Get.width,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.blue,
                    side: const BorderSide(width: 1, color: Colors.blue),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                  ),
                  onPressed: () {
                    controller.username.value.text = "";
                    controller.password.value.text = "";
                    controller.rePassword.value.text = "";
                    controller.fullName.value.text = "";
                    Get.toNamed(AppRouter.registerScreen);
                  },
                  child: const Text("Tạo tài khoản mới"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
