import 'package:go_router/go_router.dart';
import 'package:quon/features/splash/presentation/views/splash_view.dart';

final GoRouter routes = GoRouter(
  routes: [
    GoRoute(path: "/", builder: (context, state) => const SplashView()),
  ],
);
