import 'package:get/get.dart';
import 'package:jakone_pay/app/data/assets.dart';

class HomeController extends GetxController {
  /// index indicator for place and event
  var indexIndicatorPlace = 0.obs;
  var indexIndicatorEvent = 0.obs;

  /// data for place and event
  var dataPlace = [
    {
      "image": ancol,
      "title": "place_1",
    },
    {
      "image": monumen,
      "title": "place_2",
    },
    {
      "image": monas,
      "title": "place_3",
    },
  ];
  var dataEvent = [
    {"image": event1},
    {"image": event2},
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
