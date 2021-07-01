import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'src/presentation/router/app_router.dart';
import 'src/presentation/router/bindings/page_bindings.dart';
import 'src/presentation/router/routes_list.dart';

void main() {
  Get.put<AppRouter>(AppRouter(), permanent: true);
  runApp(
    GetMaterialApp(
      title: 'My App',
      initialRoute: ROUTES.splash,
      getPages: RoutesList.generate(),
      initialBinding: InitialBinding(),
    ),
  );
}
