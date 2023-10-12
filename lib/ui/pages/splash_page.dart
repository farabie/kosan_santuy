part of "pages.dart";

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () async {
                SignInSignUpResult result = await AuthServices.SignUp(
                  "Indomeis2g3@gmail.com",
                  "MieGagag123",
                  "AmboGanteng",
                  ["wifi", "laundry", "Kamar Mandi Dalam", "Keren", "Nambah"],
                  "Korea",
                );

                if (result.user == null) {
                  print(result.message);
                } else {
                  print(result.user.toString());
                }
              },
              child: Text("Sign Up"),
            ),
            ElevatedButton(
              onPressed: () async {
                SignInSignUpResult result = await AuthServices.signIn(
                  "Indomeis2g3@gmail.com",
                  "MieGagag123",
                );

                if (result.user == null) {
                  print(result.message);
                } else {
                  print(result.user.toString());
                }
              },
              child: Text("Sign In"),
            )
          ],
        ),
      ),
    );
  }
}
