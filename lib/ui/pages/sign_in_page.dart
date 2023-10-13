part of 'pages.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AuthServices.signIn("Indomeis2g3@gmail.com", "MieGagag123");
          },
          child: Text("Sign In"),
        ),
      ),
    );
  }
}