import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wechat_test/pages/layout/layout_page.dart';
import 'package:wechat_test/pages/profile/headerSet_page.dart';
import 'package:wechat_test/pages/profile/info_page.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const LayoutPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'info',
          builder: (BuildContext context, GoRouterState state) {
            return const InfoPage();
          },
        ),
        GoRoute(
          path: 'headerset',
          builder: (BuildContext context, GoRouterState state) {
            return const HeadersetPage();
          },
        ),
        GoRoute(
          path: 'drafts',
          builder: (BuildContext context, GoRouterState state) {
            return const InfoPage();
          },
        ),
        GoRoute(
          path: 'colletion',
          builder: (BuildContext context, GoRouterState state) {
            return const InfoPage();
          },
        ),
        GoRoute(
          path: 'follow',
          builder: (BuildContext context, GoRouterState state) {
            return const InfoPage();
          },
        ),
        GoRoute(
          path: 'history',
          builder: (BuildContext context, GoRouterState state) {
            return const InfoPage();
          },
        ),
        GoRoute(
          path: 'check-in',
          builder: (BuildContext context, GoRouterState state) {
            return const InfoPage();
          },
        ),
        GoRoute(
          path: 'minor',
          builder: (BuildContext context, GoRouterState state) {
            return const InfoPage();
          },
        ),
        GoRoute(
          path: 'setting',
          builder: (BuildContext context, GoRouterState state) {
            return const InfoPage();
          },
        ),
        GoRoute(
          path: 'help',
          builder: (BuildContext context, GoRouterState state) {
            return const InfoPage();
          },
        ),
        GoRoute(
          path: 'community',
          builder: (BuildContext context, GoRouterState state) {
            return const InfoPage();
          },
        ),
      ],
    ),
  ],
);
