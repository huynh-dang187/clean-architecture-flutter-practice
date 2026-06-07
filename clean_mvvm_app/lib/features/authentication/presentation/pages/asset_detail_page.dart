import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AssetDetailPage extends StatelessWidget {
  final String id;

  const AssetDetailPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: BackButton(
        //   onPressed: () => context.pop(),
        // ), //tôi đã thêm ở đây bạn xem vậy có đúng không
        title: Text('Asset Detail: $id'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Stock code: $id')],
        ),
      ),
    );
  }
}
