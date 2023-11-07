import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/home_controller.dart';
import '../home/widgets/project.dart';
import '../home/widgets/category.dart';
import '../shared/bottomBar.dart';

class HomePage extends GetView<HomeController> {
  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    print("AFTER BUILD");

    var sizedBox = SizedBox(
      height: 20,
    );
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: false,
          actions: [
            Icon(
              Icons.search,
              color: Colors.black,
            )
          ],
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/honey-logo.png",
                  width: 30,
                ),
              ),
              Text(
                'Home',
                style: TextStyle(color: Colors.black),
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 6,
              clipBehavior: Clip.hardEdge,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: Image.asset(
                'assets/honey-pots.jpg',
                height: 150.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            sizedBox,
            Text(
              'CATEGORIE',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: Colors.grey),
            ),
            sizedBox,
            Container(
              height: 105,
              child: ListView(
                scrollDirection: Axis.horizontal,
                reverse: false,
                children: [
                  GetX<HomeController>(builder: (ctl) {
                    return Category(
                      sizedBox: sizedBox,
                      title: controller.categories[0].title!,
                      url: "assets/honey.png",
                      description: controller.categories[0].description!,
                    );
                  }),
                  Category(
                    sizedBox: sizedBox,
                    title: controller.categories[1].title!,
                    url: "assets/honeycomb.png",
                    description: controller.categories[1].description!,
                  ),
                  Category(
                    sizedBox: sizedBox,
                    title: controller.categories[2].title!,
                    url: "assets/honey-jar.png",
                    description: controller.categories[2].description!,
                  ),
                  Category(
                    sizedBox: sizedBox,
                    title: controller.categories[3].title!,
                    url: "assets/honey-jar.png",
                    description: controller.categories[3].description!,
                  ),
                ],
              ),
            ),
            sizedBox,
            Text(
              'FEATURED PROJECTS',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: Colors.grey),
            ),
            sizedBox,
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Project(
                    url: "assets/honey_shampoo.jpg",
                    title: controller.projects[0].title!,
                    subtitle: controller.projects[0].price!.toString(),
                    trailing: controller.projects[0].rating!.toString(),
                    id: controller.projects[0].id!,
                  ),
                  Project(
                      url: "assets/honey-gel.jpg",
                      title: controller.projects[1].title!,
                      subtitle: controller.projects[1].price!.toString(),
                      trailing: controller.projects[1].rating!.toString(),
                      id: controller.projects[1].id!),
                  Project(
                      url: "assets/honey_shampoo.jpg",
                      title: controller.projects[2].title!,
                      subtitle: controller.projects[2].price!.toString(),
                      trailing: controller.projects[2].rating!.toString(),
                      id: controller.projects[2].id!),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
