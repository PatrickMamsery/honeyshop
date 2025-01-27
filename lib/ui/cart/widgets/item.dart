import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String url;
  final String title;
  final String price;
  const Item({
    super.key,
    required this.url,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: const Color.fromARGB(26, 158, 158, 158)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipOval(
                child: Image.asset(
                  url,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(price)
                ],
              ),
              const Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Icon(Icons.minimize),
                  ),
                  Text("/"),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 209, 167, 41),
                      radius: 10,
                      child: Icon(
                        Icons.add,
                        size: 15,
                        color: Colors.black,
                      ),
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
