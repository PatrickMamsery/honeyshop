import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/cart_controller.dart';
import '../cart/widgets/item.dart';

class CartPage extends GetView<CartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(230, 231, 176, 11),
          title: Center(child: Text('My Cart')),
          leading: IconButton(
              onPressed: () => Get.back(), icon: Icon(Icons.arrow_back)),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.delete),
            )
          ],
          bottom: PreferredSize(
              child: Column(), preferredSize: Size.fromHeight(50)),
        ),
        body: SafeArea(
          child: Container(
            child: Stack(
              children: [
                ListView(
                  children: [
                    Item(
                        url: "assets/honey-gel.jpg",
                        title: "honey",
                        price: "24000"),
                    Item(
                        url: "assets/honey-gel.jpg",
                        title: "honey",
                        price: "24000"),
                    Item(
                        url: "assets/honey-gel.jpg",
                        title: "honey",
                        price: "24000"),
                    Item(
                        url: "assets/honey-gel.jpg",
                        title: "honey",
                        price: "24000"),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Subtotal:",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                              Text(
                                "1250/=",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Taxes:",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                              Text(
                                "40/=",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0)),
                        color: Color.fromARGB(26, 158, 158, 158)),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 15, right: 30, left: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "1290.00l",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Container(
                            width: 70,
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(230, 231, 176, 11),
                                borderRadius: BorderRadius.circular(10)),
                            child: Text("checkout"),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
