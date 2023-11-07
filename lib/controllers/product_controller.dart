import 'package:first_app/data/models/product_response.dart';
// import 'package:first_app/data/models/projects_response.dart';
import 'package:first_app/data/repositories/product_repository.dart';
import 'package:first_app/data/services/api_client.dart';
import '../data/models/order_response.dart';
// import 'package:first_app/data/repositories/projects_repository.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
// import '../ui/home/widgets/project.dart';

class ProductController extends GetxController {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final product = Product().obs;
  final order = Order().obs;
  var count = 0.obs;
  var productId = Get.arguments;
  var name = TextEditingController();
  final _repo = ProjectRepository();

  void onInit() {
    _repo.getProject(
        beforeSend: () {},
        onSuccess: (res) {
          product(res.data!);
        },
        onError: (error) {},
        id: productId);

    super.onInit();
  }

  void add() {
    count.value++;
  }

  void minus() {
    count.value--;
  }

  void submit() {
    var data = {
      "name": name.text,
      "quantity": count.value,
      "amount": product.value.price! * count.value,
      "project_id": productId
    };
    _repo.submitOrder(
        beforeSend: () {},
        onSuccess: (status) {
          Get.back();
          // status
          //     ? print("Order created successful")
          //     : print("Order creation failed");
          status
              ? Get.snackbar('Hi', 'Order created successful')
              : Get.snackbar(
                  'Hi',
                  'Order creation failed',
                );
        },
        onError: (error) {},
        data: data);
  }

  void display() {
    Get.bottomSheet(
        Container(
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.vertical(
          //     top: Radius.circular(50.0),
          //   ),
          // ),
          height: 500,
          child: Wrap(
            children: <Widget>[
              Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Center(
                            child: Text(
                          "Order Now",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        )),
                        SizedBox(
                          height: 350,
                          child: Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GridView.count(
                                shrinkWrap: true,
                                crossAxisCount: 2,
                                // mainAxisSpacing: 10.0,
                                // crossAxisSpacing: 5.0,
                                childAspectRatio: 2.0,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Text("Name:"),
                                  ),
                                  TextFormField(
                                    controller: name,
                                    cursorColor: Colors.amber,
                                    decoration: const InputDecoration(
                                        hintText: 'Enter your name',
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.amber),
                                        )),
                                    validator: (String? value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Name is required';
                                      }
                                      return null;
                                    },
                                  ),
                                  Text("Project:"),
                                  Text(product.value.title!),
                                  Text("Quantity:"),
                                  Text(
                                    count.value.toString(),
                                  ),
                                  Text("Total:"),
                                  Text((count.value * product.value.price!)
                                      .toString())
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.amber),
                                onPressed: () => {
                                      if (_formKey.currentState!.validate())
                                        {submit()},
                                    },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, bottom: 15, left: 40, right: 40),
                                  child: Text(
                                    "Confirm",
                                  ),
                                )))
                      ],
                    ),
                  ))
            ],
          ),
        ),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(16.0),
          ),
        ));
  }
}
