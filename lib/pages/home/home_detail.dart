import 'package:flutter/material.dart';

class HomeDetail extends StatefulWidget {
  final String name;
  const HomeDetail({super.key, required this.name});

  @override
  State<HomeDetail> createState() => _HomeDetailState();
}

class _HomeDetailState extends State<HomeDetail> {
  List<Object> _list = [];
  @override
  Widget build(BuildContext context) {
    if (widget.name == "动态") {
      return Text("动态");
    }
    return SafeArea(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.white,
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.only(bottom: 6),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage(
                        "assets/images/person_top_bg.jpg",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text("作者"),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.grey,
                          size: 18.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Text("内容"),
                Padding(
                  padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.thumb_up_alt_outlined),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.chat_bubble_outline),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
