import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HeadersetPage extends StatefulWidget {
  const HeadersetPage({super.key});

  @override
  State<HeadersetPage> createState() => _HeadersetPageState();
}

class _HeadersetPageState extends State<HeadersetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.close),
        ),
      ),
      body: SafeArea(child: Text("博客")),
    );
  }
}
