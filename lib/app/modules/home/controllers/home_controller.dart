import 'package:get/get.dart';

import '../../../data/station.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  final stations = [
    Station(
      imageUrl: 'assets/station.jpg',
      category: 'Gas and Oil',
      name: 'Eni Station',
      city: 'Uskud kerem ren',
    ),
    Station(
      imageUrl: 'assets/station1.jpg',
      category: 'Kerosene',
      name: 'Total Station',
      city: 'Uskud kerem ren',
    ),
    Station(
      imageUrl: 'assets/station2.jpg',
      category: 'Fuel and Diesel',
      name: 'Tonimas',
      city: 'Uskud kerem ren',
    ),
    Station(
      imageUrl: 'assets/station4.jpg',
      category: 'Oil and Gas',
      name: 'Texaco Station',
      city: 'Aba',
    ),
  ];

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
