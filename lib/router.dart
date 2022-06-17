import 'package:go_router/go_router.dart';
import 'package:router/first_page.dart';
import 'package:router/second_page.dart';

int count = 1;

final stream = Stream.periodic(
  const Duration(seconds: 1),
  (computationCount) => count = computationCount,
);

final router = GoRouter(
  initialLocation: '/first',
  refreshListenable: GoRouterRefreshStream(stream),
  routes: [
    GoRoute(
      path: '/first',
      builder: (_, __) => const FirstPage(),
    ),
    GoRoute(
      path: '/second',
      name: 'second',
      builder: (_, state) => SecondPage(
        queryParams: state.queryParams,
        extra: state.extra,
      ),
    ),
  ],
  redirect: (state) {
    print(state.location);
    print('Called $count times.');

    return null;
  },
);
