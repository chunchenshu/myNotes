import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBar extends StatefulWidget {
  final Color color;
  final bool showText;
  final String? hintText;
  final Widget? middleWidget;
  final Function? onTap;
  const CustomBar({
    super.key,
    this.color = Colors.green,
    this.showText = true,
    this.hintText,
    this.onTap,
    this.middleWidget,
  });

  @override
  State<CustomBar> createState() => _CustomBarState();
}

class _CustomBarState extends State<CustomBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              print('111');
            },
            icon: Icon(Icons.menu, color: widget.color),
          ),
          Expanded(
            child:
                widget.middleWidget ??
                (widget.showText
                    ? SizedBox(
                        width: 200,
                        height: 37,
                        child: TextField(
                          onTap: widget.onTap != null
                              ? () => widget.onTap!()
                              : null,
                          style: TextStyle(fontSize: 17),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: widget.hintText,
                            hintStyle: TextStyle(
                              fontSize: 17,
                              color: Colors.grey,
                            ),
                            prefixIcon: Icon(Icons.search, color: Colors.grey),
                            fillColor: Colors.grey[100],
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 12,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      )
                    : SizedBox.shrink()),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  context.go("/headerset");
                },
                icon: Icon(Icons.headset_rounded, color: widget.color),
              ),
              IconButton(
                onPressed: () {
                  context.go("/info");
                },
                icon: Icon(Icons.email_outlined, color: widget.color),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
