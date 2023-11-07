import 'package:first_app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../account/widgets/profile.dart';

class AccountPage extends GetView<HomeController> {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    var sizedBox = const SizedBox(
      height: 20,
    );
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(230, 231, 176, 11),
          leading: IconButton(
              onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back)),
          title: const Center(child: Text('Edit Profile')),
          actions: const [
            Padding(
              padding: EdgeInsets.only(top: 20.0, right: 8.0),
              child: Text("SAVE"),
            )
          ],
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(225),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: Stack(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        "assets/profile-pic.jpg",
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                        bottom: 5,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: const Icon(
                            Icons.camera_alt_rounded,
                            size: 28,
                            color: Colors.amber,
                          ),
                        ))
                  ],
                ),
              )),
        ),
        body: SafeArea(
            bottom: false,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, right: 30, left: 30),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const profile(title: "UserName", subtitle: "Helena Ndiruka"),
                      sizedBox,
                      const profile(title: "Email", subtitle: "hellena@gmail.com"),
                      sizedBox,
                      const profile(title: "Phone", subtitle: "0679316321"),
                      sizedBox,
                      const profile(title: "Gender", subtitle: "Female"),
                      sizedBox,
                      const profile(title: "Date of birth", subtitle: "04/05/2020")
                    ],
                  ),
                ),
              ),
            )));
  }
}
