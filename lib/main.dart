import 'package:flutter/material.dart';
import 'package:kosan_santuy/ui/pages/pages.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter is initialized.

  // Initialize Firebase.
  await Firebase.initializeApp();
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
