import 'package:flutter/material.dart';
import 'package:wechat_test/pages/group/group_page.dart';
import 'package:wechat_test/pages/home/home_page.dart';
import 'package:wechat_test/pages/profile/profile_page.dart';
import 'package:wechat_test/pages/shiji/shiji_page.dart';
import 'package:wechat_test/pages/subject/subject_page.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  // 页面内容列表
  final List<Widget> _pages = [
    HomePage(),
    SubjectPage(),
    GroupPage(),
    ShijiPage(),
    ProfilePage(),
  ];

  final _itemsList = [
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/images/ic_tab_home_normal.png',
        width: 36,
        height: 36,
      ),
      label: "首页",
      activeIcon: Image.asset(
        'assets/images/ic_tab_home_active.png',
        width: 36,
        height: 36,
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/images/ic_tab_subject_normal.png',
        width: 36,
        height: 36,
      ),
      label: "书影音",
      activeIcon: Image.asset(
        'assets/images/ic_tab_subject_active.png',
        width: 36,
        height: 36,
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/images/ic_tab_group_normal.png',
        width: 24,
        height: 24,
      ),
      label: "小组",
      activeIcon: Image.asset(
        'assets/images/ic_tab_group_active.png',
        width: 24,
        height: 24,
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/images/ic_tab_shiji_normal.png',
        width: 24,
        height: 24,
      ),
      label: "市集",
      activeIcon: Image.asset(
        'assets/images/ic_tab_shiji_active.png',
        width: 24,
        height: 24,
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/images/ic_tab_profile_normal.png',
        width: 24,
        height: 24,
      ),
      label: "我的",
      activeIcon: Image.asset(
        'assets/images/ic_tab_profile_active.png',
        width: 24,
        height: 24,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      backgroundColor: Color.fromARGB(255, 248, 248, 248),
      bottomNavigationBar: BottomNavigationBar(
        items: _itemsList,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          _pageController.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
