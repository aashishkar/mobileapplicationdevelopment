import 'package:flutter/material.dart';
import 'package:mobileapplicationdevelopment/app/app.dart';
import 'package:mobileapplicationdevelopment/app/di/di.dart';
import 'package:mobileapplicationdevelopment/core/network/hive_service.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveService.init();

  // await HiveService().clearStudentBox();

  await initDependencies();

  runApp(
    App(),
  );
}
