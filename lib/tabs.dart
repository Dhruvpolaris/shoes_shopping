import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  final String name;
  final bool isSelected;
  Tabs(this.name, this.isSelected);
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.2 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 8.0),
        decoration: isSelected
            ? BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30.0))
            : null,
        child: Center(
            child: Text(
          name,
          style: isSelected
              ? TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                )
              : TextStyle(
                  fontSize: 18.0,
                ),
        )),
      ),
    );
  }
}
