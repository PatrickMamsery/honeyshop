import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  final String title;
  final String subtitle;
  profile({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(
          child: Flexible(
            child: TextFormField(
              style: TextStyle(fontWeight: FontWeight.bold),
              initialValue: subtitle,
              cursorColor: Colors.amber,
              decoration: const InputDecoration(
                  // hintText: 'Enter your name',
                  focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              )),
            ),
          ),
        ),
      ],
    );
  }
}
