import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/user.dart';

class Details extends StatelessWidget {
  Details({Key? key}) : super(key: key);
  final User controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GetX<User>(
            builder: (_) => Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text('Counter: ${controller.count}'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 30,
                padding: const EdgeInsets.only(left: 30),
                child: ElevatedButton(
                  onPressed: () {
                    controller.increment();
                  },
                  child: const Text('Press to increment'),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text(
                  'Previous Route',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          )
        ],
      ),
    );
  }
}
