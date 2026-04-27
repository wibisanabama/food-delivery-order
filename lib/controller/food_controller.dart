import 'package:flutter/material.dart';
import 'package:food_delivery_order/model/food_model.dart';
import 'package:food_delivery_order/view/page/detail.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class FoodController extends GetxController {
  void openDetailsPage(FoodModel item) {
    Get.to(DetailPage(item: item));
  }

  void launchWhatsApp(String food) async {
    var contact = "+6281234567890";
    var url =
        "whatsapp://send?phone=$contact&text=Assalamualaikum, saya mau order $food";

    try {
      await launchUrl(Uri.parse(url));
    } on Exception {
      debugPrint('WhatsApp is not installed');
    }
  }
}
