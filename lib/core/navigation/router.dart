import 'package:go_router/go_router.dart';
import 'package:shop_app/core/navigation/routes.dart';
import 'package:shop_app/features/home/page/home_detail.dart';

final router = GoRouter(
  initialLocation: Routes.home,
  routes: [
    GoRoute(path: Routes.home, builder:  (context, state) => HomeDetail(),)
  ]
);