import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/facebook_ui/facebook_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_facebook_clone/facebook_ui/widgets/aspect_ratio.dart';

void main() {
  runApp(DevicePreview(
    builder: (_) => const MyApp(),
    enabled: !kReleaseMode,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      home: const FacebookUI(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
