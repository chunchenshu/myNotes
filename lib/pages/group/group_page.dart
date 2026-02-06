import 'package:flutter/material.dart';
import 'package:wechat_test/common/widgets/custom_bar.dart';

class GroupPage extends StatelessWidget {
  const GroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(bottom: false, child: CustomBar()),
        Text("222"),
      ],
    );
  }
}
