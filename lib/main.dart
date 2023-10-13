import 'package:flutter/material.dart';
import 'package:kosan_santuy/bloc/blocs.dart';
import 'package:kosan_santuy/models/models.dart';
import 'package:kosan_santuy/services/services.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:kosan_santuy/ui/pages/pages.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return StreamProvider<auth.User?>.value(
      initialData: null,
      value: AuthServices.userStream,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => PageBloc()),
          BlocProvider(create: (_) => UserBloc()),
          BlocProvider(create: (_) => ThemeBloc()),
        ],
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (_, themeState) => MaterialApp(
            theme: themeState.themeData,
            debugShowCheckedModeBanner: false,
            home: Wrapper(),
          ),
        ),
      ),
    );
  }
}
