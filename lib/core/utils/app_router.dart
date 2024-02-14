// GoRouter configuration
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/pesentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',//by default is initial router
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
