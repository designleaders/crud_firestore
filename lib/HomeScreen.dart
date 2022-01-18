import 'package:crud_firestore/Details.dart';
import 'package:crud_firestore/home_dependency.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final apiFetch = Get.put(HomeDependency());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gtex State Management',
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Obx(
                () => Text(
                  '${apiFetch.count}',
                  style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              FlatButton(
                  textColor: Colors.white,
                  color: Colors.black,
                  child: Text('go to detaisl'),
                  onPressed: () {
                    apiFetch.counter();
                  }),
              SizedBox(
                height: 40,
              ),
              FlatButton(
                  textColor: Colors.white,
                  color: Colors.black,
                  child: Text('go to detaisl'),
                  onPressed: () {
                    // Get.defaultDialog(
                    //     title: 'Title of the alertbox',
                    //     content: Text('detail of the dialog'));

                    Get.snackbar(
                        'title of snackbar', 'detaisl message of the snackbar',
                        snackPosition: SnackPosition.BOTTOM);
                  }),
            ]),
      ),
    );
  }
}
