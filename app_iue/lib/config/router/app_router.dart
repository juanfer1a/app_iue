import 'package:app_iue/presentation/screens/iue_principal.dart';
import 'package:app_iue/presentation/screens/menu.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const IueScreen(),
    ),
    GoRoute(
      path: '/IueScreens',
      builder: (context, state) => const IueScreen(),
    ),
    GoRoute(
      path: '/Menu',
      builder: (context, state) => const Menu(),
    ),
  ],
);
