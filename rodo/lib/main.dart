import 'package:flutter/material.dart';
import 'home.dart';
import 'search_function.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom]);
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: Home()),
  );
}
