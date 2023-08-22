import 'package:flutter/material.dart';
import 'package:flutter_overlay_apps/flutter_overlay_apps.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';

class MyOverlayContent extends StatefulWidget {
  const MyOverlayContent({super.key});

  @override
  State<MyOverlayContent> createState() => _MyOverlayContentState();
}

class _MyOverlayContentState extends State<MyOverlayContent> {
  late final WebViewController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
      controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://flutter.dev'),
      );
  }
  @override
  Widget build(BuildContext context) {
    return WebViewWidget(controller: controller);
  }
}
