import 'package:first_app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../account/widgets/profile.dart';

class AccountPage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    var sizedBox = SizedBox(
      height: 20,
    );
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(230, 231, 176, 11),
          leading: IconButton(
              onPressed: () => Get.back(), icon: Icon(Icons.arrow_back)),
          title: Center(child: Text('Edit Profile')),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 8.0),
              child: Text("SAVE"),
            )
          ],
          bottom: PreferredSize(
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
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Icon(
                            Icons.camera_alt_rounded,
                            size: 28,
                            color: Colors.amber,
                          ),
                        ))
                  ],
                ),
              ),
              preferredSize: Size.fromHeight(225)),
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
                      profile(title: "UserName", subtitle: "Helena Ndiruka"),
                      sizedBox,
                      profile(title: "Email", subtitle: "hellena@gmail.com"),
                      sizedBox,
                      profile(title: "Phone", subtitle: "0679316321"),
                      sizedBox,
                      profile(title: "Gender", subtitle: "Female"),
                      sizedBox,
                      profile(title: "Date of birth", subtitle: "04/05/2020")
                    ],
                  ),
                ),
              ),
            )));
  }
}
