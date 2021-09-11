import 'package:flutter/material.dart';

class DottedSeperatorView extends StatelessWidget {
  const DottedSeperatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 8.0,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 400,
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
