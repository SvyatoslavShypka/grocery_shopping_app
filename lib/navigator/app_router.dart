import 'package:flutter/material.dart';
// import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

import '../screens/home_screen.dart';
import '../screens/intro_screen.dart';

class AppRouter {
  late final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        name: 'intro',
        path: '/intro',
        builder: (BuildContext context, GoRouterState state) {
          return const IntroScreen();
        },
      ),
      // GoRoute(
      // name: 'login',
      // path: '/login',
      // builder: (BuildContext context, GoRouterState state) {
      // return const LoginScreen();
      // },
      // ),
      // GoRoute(
      // name: 'register',
      // path: '/register',
      // builder: (BuildContext context, GoRouterState state) {
      // return const RegisterScreen();
      // },
      // ),
      GoRoute(
        name: 'home',
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
      // GoRoute(
      // name: 'scan',
      // path: '/scan',
      // builder: (BuildContext context, GoRouterState state) {
      // return const ScanScreen();
      // },
      // ),
      // GoRoute(
      // name: 'orders',
      // path: '/orders',
      // builder: (BuildContext context, GoRouterState state) {
      // return const OrderScreen();
      // },
      // routes: [
      // GoRoute(
      // name: 'order-details',
      // path: 'orders/:orderId',
      // builder: (BuildContext context, GoRouterState state) {
      // return const OrderDetailsScreen();
      // },
      // ),
      // ]),
      // GoRoute(
      // name: 'cart',
      // path: '/cart',
      // builder: (BuildContext context, GoRouterState state) {
      // return const CartScreen();
      // },
      // ),
      // GoRoute(
      // name: 'category',
      // path: '/category/:categoryId',
      // builder: (BuildContext context, GoRouterState state) {
      // return CategoryScreen(
      // categoryId: state.pathParameters['categoryId']!,
      // );
      // },
      // ),
      // GoRoute(
      // name: 'search',
      // path: '/search',
      // pageBuilder: (BuildContext context, GoRouterState state) {
      // return CustomTransitionPage<void>(
      // key: state.pageKey,
      // transitionDuration: const Duration(milliseconds: 400),
      // reverseTransitionDuration: const Duration(milliseconds: 400),
      // transitionsBuilder: (
      // BuildContext context,
      // Animation<double> animation,
      // Animation<double> secondaryAnimation,
      // Widget child,
      // ) {
      // return child.animate().fadeIn(
      // duration: const Duration(milliseconds: 400),
      // begin: 0.0,
      // );
      // },
      // child: const SearchScreen(),
      // );
      // },
      // ),
    ],
  );
}
