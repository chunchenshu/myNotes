import 'package:flutter/material.dart';

class HomeDetail extends StatelessWidget {
  final String? name;
  const HomeDetail({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 120,
          decoration: BoxDecoration(
            border: Border.symmetric(
              horizontal: BorderSide(color: Colors.black),
            ),
          ),
          child: Center(child: Text('${index + 1}')),
        );
      },
      itemCount: 50,
    );
  }
}
