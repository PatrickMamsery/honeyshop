import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final String title1;
  final String subtitle1;

  Description({
    super.key,
    required this.sizedBox,
    required this.title1,
    required this.subtitle1,
  });

  final SizedBox sizedBox;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title1,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            sizedBox,
            Text(
              subtitle1,
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ],
    );
  }
}
