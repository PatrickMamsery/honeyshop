import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/home_controller.dart';
import '../home/widgets/project.dart';
import '../home/widgets/category.dart';
import '../shared/bottomBar.dart';

// ignore: must_be_immutable
class HomePage extends GetView<HomeController> {
  @override
  HomeController controller = Get.put(HomeController());

  HomePage({super.key});
  @override
  Widget build(BuildContext context) {

    var sizedBox = const SizedBox(
      height: 20,
    );
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: false,
          actions: const [
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
              const Text(
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
            const Text(
              'CATEGORY',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: Colors.grey),
            ),
            sizedBox,
            SizedBox(
              height: 105,
              child: Obx(() {
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  reverse: false,
                  itemCount: controller.categories.length,
                  itemBuilder: ((context, index) {
                    return Category(
                      sizedBox: sizedBox,
                      title: controller.categories[index].title!,
                      url: "assets/honey.png",
                      description: controller.categories[index].description!,
                    );
                  }),
                );
              }),
              // child: ListView(
              //   scrollDirection: Axis.horizontal,
              //   reverse: false,
              //   children: [
              //     GetX<HomeController>(builder: (ctl) {
              //       return Category(
              //         sizedBox: sizedBox,
              //         title: controller.categories[0].title!,
              //         url: "assets/honey.png",
              //         description: controller.categories[0].description!,
              //       );
              //     }),
              //     Category(
              //       sizedBox: sizedBox,
              //       title: controller.categories[1].title!,
              //       url: "assets/honeycomb.png",
              //       description: controller.categories[1].description!,
              //     ),
              //     Category(
              //       sizedBox: sizedBox,
              //       title: controller.categories[2].title!,
              //       url: "assets/honey-jar.png",
              //       description: controller.categories[2].description!,
              //     ),
              //     Category(
              //       sizedBox: sizedBox,
              //       title: controller.categories[3].title!,
              //       url: "assets/honey-jar.png",
              //       description: controller.categories[3].description!,
              //     ),
              //   ],
              // ),
            ),
            sizedBox,
            const Text(
              'FEATURED PROJECTS',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: Colors.grey),
            ),
            sizedBox,
            SizedBox(
              height: 200,
              child: Obx(() {
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.projects.length,
                  itemBuilder: ((context, index) {
                    return Project(
                      url: "assets/honey_shampoo.jpg",
                      title: controller.projects[index].title!,
                      subtitle: controller.projects[index].price!.toString(),
                      trailing: controller.projects[index].rating!.toString(),
                      id: controller.projects[index].id!,
                    );
                  }),
                );
              }),
              // child: ListView(
              //   scrollDirection: Axis.horizontal,
              //   children: [
              //     Project(
              //       url: "assets/honey_shampoo.jpg",
              //       title: controller.projects[0].title!,
              //       subtitle: controller.projects[0].price!.toString(),
              //       trailing: controller.projects[0].rating!.toString(),
              //       id: controller.projects[0].id!,
              //     ),
              //     Project(
              //         url: "assets/honey-gel.jpg",
              //         title: controller.projects[1].title!,
              //         subtitle: controller.projects[1].price!.toString(),
              //         trailing: controller.projects[1].rating!.toString(),
              //         id: controller.projects[1].id!),
              //     Project(
              //         url: "assets/honey_shampoo.jpg",
              //         title: controller.projects[2].title!,
              //         subtitle: controller.projects[2].price!.toString(),
              //         trailing: controller.projects[2].rating!.toString(),
              //         id: controller.projects[2].id!),
              //   ],
              // ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
