import 'package:flutter/material.dart';
import 'bottom_nav_bar.dart';
import 'home.dart';

import 'package:flutter/services.dart';




void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
  runApp(
    MaterialApp(
      home: Home()
      ),
  );
}

