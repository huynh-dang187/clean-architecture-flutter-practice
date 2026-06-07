import 'package:clean_mvvm_app/core/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gap/gap.dart';

class AssetPage extends StatelessWidget {
  const AssetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Asset Page')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Asset Page'),

            ElevatedButton(
              onPressed: () {
                context.push(AppRoutes.assetDetail('PHS'));
              },
              child: const Text('Open PHS'),
            ),
            Gap(10),
            ElevatedButton(
              onPressed: () {
                context.push(AppRoutes.assetDetail('SSI'));
              },
              child: const Text('Open SSI'),
            ),
            Gap(10),
            ElevatedButton(
              onPressed: () {
                context.push(AppRoutes.assetDetail("VND"));
              },
              child: const Text('Open VND'),
            ),
          ],
        ),
      ),
    );
  }
}
