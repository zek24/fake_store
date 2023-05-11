import 'package:auto_route/auto_route.dart';
import 'package:fake_store/core/consts/routes_constants.dart';
import 'package:flutter/material.dart';

import '../../../features/product_detail/presentation/pages/product_detail_screen.dart';
import '../../../features/products_list/presentation/pages/products_screen.dart';
import '../../presentation/widgets/screen_404.dart';

part 'routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: ProductRoute.page,
          path: RoutesConstants.routeProductItem,
        ),
        AutoRoute(
          initial: true,
          page: ProductsRoute.page,
          path: RoutesConstants.routeProductList,
        ),
        AutoRoute(
          page: Route404.page,
          path: RoutesConstants.routeError,
        ),
      ];
}
