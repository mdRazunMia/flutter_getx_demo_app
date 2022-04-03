import 'package:demo_app/models/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'details.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final user = Get.put(User());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetX<User>(
              builder: (_) => Center(child: Text('Clicks: ${user.count}')),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                user.increment();
              },
              child: const Icon(
                Icons.add,
                color: Colors.amber,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => Details());
              },
              child: const Text('Next Route'),
            ),
          ]),
    );
  }
}
