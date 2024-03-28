import 'package:atascados/widgets/pages/home_page.dart';
// import 'package:atascados/widgets/pages/scanner_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter get router => _router;
}

final _router = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomePage(),
  ),
]);
