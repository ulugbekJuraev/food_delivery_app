import 'package:flutter/material.dart';
import 'package:food_delivery/pages/cart/cart_page.dart';
import 'package:food_delivery/pages/food/popular_food_detail.dart';
import 'package:food_delivery/pages/food/recommended_food_detailed.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';

class RouteHelp {
  static const String initialRoute = "/";

  static const String popularFoodroute = "/popular-food";
  static const String recommendedFoodroute = "/recommended-food";
  static const String cartPageroute = "/cart-page";

  static String getPopularFoodRoute(int pageId, String page) =>
      "$popularFoodroute?pageId=$pageId&page=$page";
  static String getinitialRoute() => "$initialRoute";
  static String getrecommendedRoute(int pageId) =>
      "$recommendedFoodroute?pageId=$pageId";
  static String getcartPageRoute(int pageId, String page) =>
      "$cartPageroute?pageId=$pageId";

  static List<GetPage> routes = [
    GetPage(
        name: initialRoute,
        page: () {
          return MainFoodPage();
        },
        transition: Transition.circularReveal),
    GetPage(
        name: popularFoodroute,
        page: () {
          var pageId = Get.parameters['pageId'];
          var page = Get.parameters['page'];
          return PopularFoodDetail(
            pageId: int.parse(pageId!),
            page: page!,
          );
        },
        transition: Transition.circularReveal),
    GetPage(
        name: recommendedFoodroute,
        page: () {
          var pageId = Get.parameters['pageId'];
          return RecommendedFoodDetail(pageId: int.parse(pageId!));
        },
        transition: Transition.circularReveal),
    GetPage(
        name: cartPageroute,
        page: () {
          var pageId = Get.parameters['pageId'];
          return CartPage();
        },
        transition: Transition.circularReveal),
  ];
}
