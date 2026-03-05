import 'package:flutter/material.dart';
import 'package:wechat_test/router/go_router.dart';
import 'package:wechat_test/pages/layout/layout_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.white)),
    );
  }
}
