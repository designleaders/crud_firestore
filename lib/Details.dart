import 'package:crud_firestore/home_dependency.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Details extends StatelessWidget {
  final apiFecth = Get.find<HomeDependency>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'showing details',
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.teal[100],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Welcome to the dammy details',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 40,
                ),
                FlatButton(
                    color: Colors.black,
                    textColor: Colors.white,
                    child: Text('go to home'),
                    onPressed: () {
                      var result = apiFecth.count;
                      print(result);
                    }),
              ]),
        ),
      ),
    );
  }
}
