import 'package:atascados/widgets/pages/home_page.dart';
import 'package:atascados/widgets/pages/splash_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter get router => _router;
}

final _router = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const SplashPage(),
  ),
  GoRoute(
    path: '/home',
    builder: (context, state) => const HomePage(),
  )
]);
