import 'package:food_delivery/data/api/api_client.dart';
import 'package:food_delivery/utils/app_constants.dart';

import 'package:get/get.dart';

class RecommendedProductRepo extends GetxService {
  final ApiClient apiClient;

  RecommendedProductRepo({required this.apiClient});

  Future<Response<dynamic>> getRecommendedProductList() async {
    print('REPO get data');
    // return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
    return await apiClient.get(AppConstants.RECOMMENDED_PRODUCT_URI);
  }
}
