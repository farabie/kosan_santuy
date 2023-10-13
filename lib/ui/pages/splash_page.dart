part of "pages.dart";

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        onPressed: () {
          context.read<PageBloc>().add(GoToLoginPage());
        },
        child: Text(
          "Go To Sign In Page",
        ),
      ),
    ));
  }
}
