import 'package:first_app/ui/product/product_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Project extends StatelessWidget {
  final String url;
  final String title;
  final String subtitle;
  final String trailing;
  final int id;
  Project(
      {super.key,
      required this.url,
      required this.title,
      required this.subtitle,
      required this.trailing,
      required this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => ProductPage(), arguments: id),
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: SizedBox(
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                url,
                width: 150,
                height: 120,
                fit: BoxFit.cover,
              ),
              // ListTile(
              //   title: Text(title),
              //   subtitle: Text(subtitle),
              //   trailing: Text(trailing),
              // )
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 8.0, left: 8.0, right: 8.0),
                    child: Text(
                      subtitle,
                      style: TextStyle(
                          color: Colors.amber, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      trailing,
                      style: TextStyle(
                          color: Colors.lightGreenAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
