import 'package:flutter/material.dart';

class EmptyLayout extends StatelessWidget {
  final Widget child;

  const EmptyLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: child);
  }
}
