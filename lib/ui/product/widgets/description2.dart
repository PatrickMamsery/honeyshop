import 'package:flutter/material.dart';

class Description2 extends StatelessWidget {
  final String title;
  final String subtitle;
  const Description2({
    super.key,
    required this.sizedBox,
    required this.title,
    required this.subtitle,
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
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            sizedBox,
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Color.fromARGB(230, 231, 176, 11),
                    child: Icon(
                      Icons.check,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
