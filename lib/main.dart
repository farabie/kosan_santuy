import 'package:flutter/material.dart';
import 'package:kosan_santuy/ui/pages/pages.dart';

void main() {
  runApp(const KosanSantuy());
}

class KosanSantuy extends StatelessWidget {
  const KosanSantuy({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
