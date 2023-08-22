import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_3d0/widget/Myapp.dart';
import 'package:flutter_3d0/widget/home_page.dart';
import 'package:flutter_3d0/widget/overlayContent.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_background_service_android/flutter_background_service_android.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

@pragma("vm:entry-point")
void overlayMain() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyOverlayContent()
  ));
}