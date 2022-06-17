import 'package:go_router/go_router.dart';
import 'package:router/first_page.dart';
import 'package:router/second_page.dart';

final router = GoRouter(
  initialLocation: '/first',
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
      redirect: (state) {
        print(state.location);
        print(state.queryParams);
        print(state.extra);
        return null;
      },
    ),
  ],
);
