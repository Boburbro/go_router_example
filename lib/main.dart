import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_example/route_names.dart';
import 'package:go_router_example/screens/home_screen.dart';
import 'package:go_router_example/screens/inital_page.dart';
import 'package:go_router_example/screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // it is (.router) from go_router
      routerConfig: _route,
    );
  }

  final GoRouter _route = GoRouter(
    // redirect: (context, state) {
    //   if (isLogin){
    //     return "/home"
    //   }else{
    //     return "/login";
    //   }
    // },
    errorBuilder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Error page"),
        ),
      );
    },
    initialLocation: "/home",
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            fullscreenDialog: true,
            transitionDuration: Duration(seconds: 2),
            key: state.pageKey,
            child: InitalPage(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                    FadeTransition(
              opacity: CurveTween(
                curve: Curves.bounceInOut,
              ).animate(animation),
              child: child,
            ),
          );
        },
      ),
      GoRoute(
        name: RouteNames.home,
        path: '/home',
        builder: ((context, state) => const HomeScreen()),
      ),
      GoRoute(
        name: RouteNames.profile,
        path: '/profile/:name',
        builder: ((context, GoRouterState state) => ProfileScreen(
              name: state.pathParameters['name']!,
            )),
      ),
    ],
  );
}
