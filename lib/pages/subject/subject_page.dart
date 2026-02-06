import 'package:flutter/material.dart';
import 'package:wechat_test/common/widgets/custom_bar.dart';

class SubjectPage extends StatelessWidget {
  const SubjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = ['电影', '电视', "读书", "播客", "音乐", "同城"];

    return DefaultTabController(
      length: tabs.length,
      initialIndex: 0,
      child: Column(
        children: [
          SafeArea(bottom: false, child: CustomBar()),
          TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.center,
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            labelPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 1,
            ),
            tabs: tabs.map((e) => Tab(text: e)).toList(),
          ),
          Expanded(
            child: TabBarView(
              children: tabs.map((e) {
                return ListView.builder(
                  itemCount: 20,
                  itemBuilder: (_, i) => ListTile(title: Text('$e 内容 $i')),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
