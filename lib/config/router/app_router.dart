import 'package:cinema_lphant/Presentacion/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [

    GoRoute(
      path: '/',
      name: HomeScreenM.name,
      builder: (context, state) => const HomeScreenM(),
      )

  ]
  );