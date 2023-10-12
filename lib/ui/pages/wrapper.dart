part of 'pages.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    auth.User? firebaseUser = Provider.of<auth.User?>(context);

    if (firebaseUser == null) {
      return SignInPage();
    }
    return MainPage();
  }
}
