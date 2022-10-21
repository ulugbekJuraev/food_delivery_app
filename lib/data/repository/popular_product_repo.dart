import 'package:food_delivery/data/api/api_client.dart';
import 'package:food_delivery/utils/app_constants.dart';

import 'package:get/get.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;

  PopularProductRepo({required this.apiClient});

  Future<Response<dynamic>> getPopularProductList() async {

    print('REPO get data');
    // return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
    return await apiClient.get(AppConstants.POPULAR_PRODUCT_URI);
  }
}
