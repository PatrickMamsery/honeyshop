import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../product/widgets/description.dart';
import '../../controllers/product_controller.dart';
import '../product/widgets/description2.dart';

// ignore: must_be_immutable
class ProductPage extends GetView<ProductController> {
  @override
  ProductController controller = Get.put(ProductController());

  ProductPage({super.key});
  @override
  Widget build(BuildContext context) {
    var sizedBox = const SizedBox(
      height: 20,
    );
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color.fromARGB(255, 209, 167, 41),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
        actions: const [Icon(Icons.favorite)],
        flexibleSpace: ClipRRect(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
          child: Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                focalRadius:
                    0.2, // Adjust this value to control the intensity of the effect
                radius: 2,
                colors: [
                  Color.fromARGB(255, 236, 235, 232),
                  Color.fromARGB(255, 231, 176, 11), // Darker amber color
                  Color.fromARGB(230, 231, 176, 11), // Darker amber color
                ],
                stops: [
                  0.1,
                  0.3,
                  0.5
                ], // Adjust the stop positions to control the gradient effect
              ),
            ),
          ),
        ),

        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(250),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 75),
              child: Image.asset(
                "assets/honey-cider.png",
                height: 200,
              ),
            )),
      ),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                controller.product.value.title!,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              sizedBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 8.0,
                          right: 8.0,
                        ),
                        child: Text(
                          controller.product.value.price!.toString(),
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 6.0),
                        child: Text(
                          "210l",
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 8.0, left: 8.0, right: 8.0),
                        child: Container(
                          width: 70,
                          height: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(230, 231, 176, 11),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Text("26% off"),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, bottom: 8.0),
                        child: GestureDetector(
                          onTap: () => controller.minus(),
                          child: Image.asset(
                            "assets/minus.png",
                            width: 20,
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10.0, bottom: 8.0),
                          child: GetX<ProductController>(
                            builder: (ctl) => Text(
                              ctl.count.value.toString(),
                              style: const TextStyle(fontSize: 15),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, bottom: 8.0),
                        child: GestureDetector(
                          onTap: () => controller.add(),
                          child: Image.asset(
                            "assets/plus.png",
                            width: 20,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              sizedBox,
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Descrilption",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(controller.product.value.description!),
              sizedBox,
              SizedBox(
                height: 280,
                child: Flexible(
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 0.0,
                    crossAxisSpacing: 0.0,
                    childAspectRatio: 2.0,
                    children: [
                      Description(
                          sizedBox: sizedBox,
                          title1: "Title",
                          subtitle1: controller.product.value.title!),
                      Description(
                          sizedBox: sizedBox,
                          title1: "Weightl",
                          subtitle1:
                              controller.product.value.weight!.toString()),
                      Description2(
                        sizedBox: sizedBox,
                        title: "Organicl",
                        subtitle: controller.product.value.organic!,
                      ),
                      Description2(
                        sizedBox: sizedBox,
                        title: "Local Bee Keeper",
                        subtitle: controller.product.value.localBeeKeeper!,
                      ),
                      Description(
                          sizedBox: sizedBox,
                          title1: "Jar Type",
                          subtitle1: "Plastic"),
                      Description(
                          sizedBox: sizedBox,
                          title1: "UMF",
                          subtitle1: "Only forManuka"),
                    ],
                  ),
                ),
              ),
              sizedBox,
              Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber),
                      onPressed: () => controller.display(),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 15, bottom: 15, left: 40, right: 40),
                        child: Text(
                          "Order",
                        ),
                      )))
              // ButtonBar()
            ]),
          ),
        ),
      ),
    );
  }
}
