import 'package:flutter/material.dart';

class LoadingView extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
