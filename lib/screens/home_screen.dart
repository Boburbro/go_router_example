import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_example/route_names.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 20,
          children: [
            Text(
              "1. It is Flutter Favorite package for declarative routing in Flutter."
              "\n2. It is based on Navigator 2.0 API."
              "\n3. It provide a convenient, URL-based API for navigating between different screen",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            FilledButton(
              onPressed: () {
                // GoRouter.of(context).go("/profile");
                // context.go('/profile/Bobur');
                context.pushNamed(
                  RouteNames.profile,
                  pathParameters: {'name': 'Bobur'},
                  queryParameters: {'username': 'Boburbro'},
                );
              },
              child: Text("Push Profile"),
            ),
            FilledButton(
              onPressed: () {
                // GoRouter.of(context).go("/profile");
                // context.go('/profile/Bobur');
                context.goNamed(
                  RouteNames.profile,
                  pathParameters: {'name': 'Bobur'},
                  queryParameters: {'username': 'Boburbro'},
                );
              },
              child: Text("Go Profile"),
            ),
            FilledButton(
              onPressed: () {
                // GoRouter.of(context).go("/profile");
                // context.go('/profile/Bobur');
                context.go("/wefaergwer");
              },
              child: Text("Go Error"),
            ),
            FilledButton(
              onPressed: () {
                // GoRouter.of(context).go("/profile");
                // context.go('/profile/Bobur');
                context.go("/");
              },
              child: Text("Go inital"),
            ),
            FilledButton(
              onPressed: () {
                // GoRouter.of(context).go("/profile");
                // context.go('/profile/Bobur');
                context.push("/");
              },
              child: Text("Push inital"),
            ),
          ],
        ),
      ),
    );
  }
}
