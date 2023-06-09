import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:fake_store/core/consts/routes_constants.dart';
import 'package:flutter/material.dart';

import '../../../features/category_list/presentation/pages/category_list_screen.dart';
import '../../../features/dashboard/presentation/pages/dashboard_screen.dart';
import '../../../features/product_detail/presentation/pages/product_detail_screen.dart';
import '../../../features/products_list/presentation/pages/products_screen.dart';
import '../../presentation/widgets/screen_404.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: DashBoardRoute.page,
          path: RoutesConstants.routeDashBoard,
        ),
        AutoRoute(
          page: ProductDetailRoute.page,
          path: RoutesConstants.routeProductItem,
        ),
        // AutoRoute(
        //   page: ProductsListRoute.page,
        //   path: RoutesConstants.routeProductListAll,
        // ),
        AutoRoute(
          page: ProductsListRoute.page,
          path: RoutesConstants.routeProductListByCategory,
        ),
        AutoRoute(
          page: CategoryListRoute.page,
          path: RoutesConstants.routeCategoryList,
        ),
        AutoRoute(
          page: Route404.page,
          path: RoutesConstants.routeError,
        ),
      ];
}
