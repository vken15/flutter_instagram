import 'package:flutter_instagram/src/core/utils/init_bindings.dart';
import 'package:flutter_instagram/src/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      initialBinding:  InitialBindings(),
      initialRoute: AppRouter.tabScreen,
      getPages: AppRouter.pages,
    );
  }
}
