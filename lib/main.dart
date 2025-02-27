import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pianino_app/app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}
