import 'package:flutter/material.dart';
import 'package:wechat_test/common/widgets/custom_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = ['动态', '推荐'];

    return DefaultTabController(
      length: tabs.length,
      initialIndex: 0,
      child: Column(
        children: [
          SafeArea(bottom: false, child: CustomBar()),
          TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            labelPadding: const EdgeInsets.symmetric(horizontal: 16),
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
