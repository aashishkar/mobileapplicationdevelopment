import 'package:flutter/cupertino.dart';
import 'package:wise_academy/app/app.dart';
import 'package:wise_academy/app/di/di.dart';
import 'package:wise_academy/core/network/hive_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveService().init();
  await initDependencies();
  runApp(
    App(),
  );
}
