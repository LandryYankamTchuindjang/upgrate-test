import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:upgrader/upgrader.dart';

class PageTest extends StatefulWidget {
  const PageTest({super.key});

  @override
  State<PageTest> createState() => _PageTestState();
}

class _PageTestState extends State<PageTest> {
  static const appcastURL =
      'https://document.connecttechnology.io/api/files/2';

  final upgrader = Upgrader(
    debugLogging: true,
    debugDisplayAlways: true,
    showIgnore: true,
    showLater: true,
    canDismissDialog: false,
    minAppVersion: "1.0.0",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page test"),
      ),
      body: UpgradeAlert(
        upgrader: upgrader,
        child: Center(child: Text('Checking...')),
      ),
    );
  }
}
