import 'package:go_router/go_router.dart';

import '../../features/authentication/presentation/pages/home_router_page.dart';
import '../../features/authentication/presentation/pages/asset_page.dart';
import '../../features/authentication/presentation/pages/profile_router_page.dart';
import '../../features/authentication/presentation/pages/asset_detail_page.dart';
import '../router/app_routes.dart';

final appRouters = GoRouter(
  initialLocation: AppRoutes.home,
  routes: [
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) {
        return const HomeRouterPage();
      },
    ),
    GoRoute(
      path: AppRoutes.asset,
      builder: (context, state) {
        return const AssetPage();
      },
    ),
    GoRoute(
      path: AppRoutes.profile,
      builder: (context, state) {
        return const ProfileRouterPage();
      },
    ),
    GoRoute(
      path: '/asset/:id',
      builder: (context, state) {
        final id = state.pathParameters['id'] ?? '';

        return AssetDetailPage(id: id);
      },
    ),
  ],
);
