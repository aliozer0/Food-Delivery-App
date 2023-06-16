import 'package:food_delivery/controllers/popular_product_controller.dart';
import 'package:food_delivery/data/api/api_client.dart';
import 'package:food_delivery/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

Future<void> init() async {
  // api client
  Get.lazyPut(() => ApiClient(appBaseUrl: 'www.dependisdals.com.tr'));
  //repository
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  // controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
