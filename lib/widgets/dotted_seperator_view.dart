import 'package:flutter/material.dart';

class DottedSeperatorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.0,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 100,
        itemBuilder: (context, index) => ClipOval(
          child: Container(
            margin: const EdgeInsets.all(3.0),
            width: 2.0,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
