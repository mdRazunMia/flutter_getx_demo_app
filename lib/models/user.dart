import 'package:get/get.dart';

class User extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
    update();
  }

  var name =
      ['Md. Razun Mia', 'Bishwajit Kumar, Rabeya Akter Ety', 'Md. Motin'].obs;
  List<String> getName() {
    return name;
  }
}
