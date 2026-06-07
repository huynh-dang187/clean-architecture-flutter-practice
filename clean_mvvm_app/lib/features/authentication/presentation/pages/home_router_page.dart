import 'package:clean_mvvm_app/core/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeRouterPage extends StatelessWidget {
  const HomeRouterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Router Page')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Home Router Page'),

            ElevatedButton(
              onPressed: () {
                context.go(AppRoutes.asset);
              },
              child: const Text('Go to Asset'),
            ),

            ElevatedButton(
              onPressed: () {
                context.go(AppRoutes.profile);
              },
              child: const Text('Go to Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
