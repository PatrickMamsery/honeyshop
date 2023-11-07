import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Category extends StatelessWidget {
  final String url;
  final String title;
  final String description;

  const Category(
      {super.key,
      required this.sizedBox,
      required this.url,
      required this.title,
      required this.description});
  final SizedBox sizedBox;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.bottomSheet(
          SizedBox(
            height: 500,
            child: Column(
              children: [
                Center(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/honey-pots.jpg',
                          height: 250,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                          height: 250,
                          alignment: Alignment.center,
                          child: Text(
                            title,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0),
                          )),
                    ],
                  ),
                ),
                sizedBox,
                Text(description)
              ],
            ),
          ),
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(16.0),
            ),
          )),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 209, 167, 41),
              radius: 35,
              child: Image.asset(
                url,
                width: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
              ),
            )
          ],
        ),
      ),
    );
  }
}
