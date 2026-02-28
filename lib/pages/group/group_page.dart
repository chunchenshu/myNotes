import 'package:flutter/material.dart';
import 'package:wechat_test/common/widgets/custom_bar.dart';

class GroupPage extends StatelessWidget {
  const GroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(bottom: false, child: CustomBar()),
        Expanded(child: _GroupWidget()),
      ],
    );
  }
}

class _GroupWidget extends StatefulWidget {
  const _GroupWidget({super.key});

  @override
  State<_GroupWidget> createState() => __GroupWidgetState();
}

class __GroupWidgetState extends State<_GroupWidget> {
  List myList = [];
  List foundList = [];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "我的小组",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () => print("点击"),
                    style: ButtonStyle(
                      foregroundColor: WidgetStateProperty.all(Colors.grey),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("全部", style: TextStyle(fontSize: 12)),
                        SizedBox(width: 4),
                        Icon(Icons.keyboard_arrow_right, size: 20),
                      ],
                    ),
                  ),
                ],
              ),
              if (myList.isEmpty)
                Image.asset('assets/images/ic_group_top.png')
              else
                Text("666"),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "发现小组",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () => print("点击"),
                    style: ButtonStyle(
                      foregroundColor: WidgetStateProperty.all(Colors.grey),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("更多", style: TextStyle(fontSize: 12)),
                        SizedBox(width: 4),
                        Icon(Icons.keyboard_arrow_right, size: 20),
                      ],
                    ),
                  ),
                ],
              ),
            
            ],
          ),
        ),
      ],
    );
  }
}
