import 'package:flutter/material.dart';
import 'package:wechat_test/common/widgets/custom_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.asset(
                      "assets/images/person_top_bg.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.4),
                        ],
                      ),
                    ),
                  ),
                  _buildTopBar(),
                  _buildProfileInfo(),
                ],
              ),
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ListTile(title: Text("item $index"));
            }, childCount: 20),
          ),
        ],
      ),
    );
  }
}

Widget _buildTopBar() {
  return Align(
    alignment: Alignment.topCenter,
    child: SafeArea(child: CustomBar(showText: false, color: Colors.white)),
  );
}

Widget _buildProfileInfo() {
  return Positioned(
    left: 0,
    right: 0,
    bottom: 12,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Stack(
            children: [
              CircleAvatar(radius: 40, backgroundColor: Colors.white),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(radius: 12, backgroundColor: Colors.red),
              ),
            ],
          ),
        ),
        SizedBox(height: 24),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("用户名", style: TextStyle(fontSize: 20, color: Colors.white)),
              Text(
                "ID:1111/IP:所属地",
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
              TextButton.icon(
                onPressed: () {},
                label: Text("关于我"),
                icon: Icon(Icons.arrow_drop_down),
                iconAlignment: IconAlignment.end,
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(0),
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(fontSize: 10),
                ),
              ),
              Divider(color: Colors.white),
              Text("关注我", style: TextStyle(fontSize: 12, color: Colors.white)),
            ],
          ),
        ),
      ],
    ),
  );
}
