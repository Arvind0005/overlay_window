import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_overlay_apps/flutter_overlay_apps.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:system_alert_window/system_alert_window.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
    String text="stop running";
    bool? status;
    return Scaffold(
      appBar: AppBar(title: const Text("3d model"),),
      body: Column(
        children: [
          ElevatedButton(onPressed: () async {
            await FlutterOverlayWindow.showOverlay(height: 600,width: 600,enableDrag: true);
          }, child: Text("start overlay")),
          ElevatedButton(onPressed: () async {
            status = await FlutterOverlayWindow.requestPermission();
            if(!status!)
              await FlutterOverlayWindow.requestPermission();
          }, child: Text("request permission")),
        ],
      ),
    );
  }
}
