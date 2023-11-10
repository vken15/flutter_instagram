import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_instagram/src/core/enum/login_status.dart';
import 'package:flutter_instagram/src/router/app_router.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  Rx<TextEditingController> username = Rx(TextEditingController());
  Rx<TextEditingController> password = Rx(TextEditingController());
  Rx<bool> hidePass = true.obs;

  Rx<TextEditingController> fullName = Rx(TextEditingController());
  Rx<TextEditingController> rePassword = Rx(TextEditingController());

  Rx<LoginStatus> status = LoginStatus.init.obs;

  handleLogin() async {
    print("Login");
    status(LoginStatus.loading);
    if (username.value.text == "vken15" && password.value.text == "123") {
      Get.toNamed(AppRouter.tabScreen);
      status(LoginStatus.success);
    } else {
      status(LoginStatus.faild);
      Fluttertoast.showToast(
        msg: "Tên đăng nhập hoặc mật khẩu không đúng",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }

  handleRegister() async {
    print("Register");
    var mess = "";
    if (!fullName.value.text.isNotEmpty ||
        !username.value.text.isNotEmpty ||
        !password.value.text.isNotEmpty ||
        !rePassword.value.text.isNotEmpty) {
      mess = "Vui lòng nhập đầy đủ thông tin";
    }
    if (username.value.text == "vken15") {
      mess = "Tên tài khoản đã tồn tại";
    }
    if (password.value.text != rePassword.value.text) {
      mess = "Mật khẩu nhập lại không đúng";
    }
    if (mess.isNotEmpty) {
      Fluttertoast.showToast(
        msg: mess,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    } else {
      Get.toNamed(AppRouter.tabScreen);
    }
  }

  logout() {
    Get.toNamed(AppRouter.loginScreen);
  }
}
