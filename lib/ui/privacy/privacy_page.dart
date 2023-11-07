import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/privacy_controller.dart';

class PrivacyPage extends GetView<PrivacyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(230, 231, 176, 11),
            title: Center(child: Text('Terms and Condition'))),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color.fromARGB(26, 158, 158, 158)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                  "In this example, the TextFormField will displlay the text  as its initial value. If the user interacts with the field and modifies the content, the initial value will be replaced by whatever the user ent In this example, the TextFormField will displlay the text  as its initial value. If the user interacts with the field and modifies the content, the initial value will be replaced by whatever the user entIn this example, the TextFormField will displlay the text  as its initial value. If the user interacts with the field and modifies the content, the initial value will be replaced by whatever the user entIn this example, the TextFormField will displlay the text  as its initial value. If the user interacts with the field and modifies the content, the initial value will be replaced by whatever the user entIn this example, the TextFormField will displlay the text  as its initial value. If the user interacts with the field and modifies the content, the initial value will be replaced by whatever the user entIn this example, the TextFormField will displlay the text  as its initial value. If the user interacts with the field and modifies the content, the initial value will be replaced by whatever the user entIn this example, the TextFormField will displlay the text  as its initial value. If the user interacts with the field and modifies the content, the initial value will be replaced by whatever the user entIn this example, the TextFormField will displlay the text  as its initial value. If the user interacts with the field and modifies the content, the initial value will be replaced by whatever the user entIn this example, the TextFormField will displlay the text  as its initial value. If the user interacts with the field and modifies the content, the initial value will be replaced by whatever the user ent "),
            ),
          ),
        )));
  }
}
