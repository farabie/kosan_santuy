part of "pages.dart";

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 136,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/logo.png"),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 16),
                child: Text(
                  "Find Cozy House",
                  style: blackTextFont.copyWith(fontSize: 20),
                ),
              ),
              Text(
                "Stop wasting so much time\nin places that are not habitable",
                style: greyTextFont.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
              Container(
                width: 250,
                height: 46,
                margin: EdgeInsets.only(
                  top: 70,
                  bottom: 20,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mainColor,
                  ),
                  child: Text(
                    "Get Started",
                    style: whiteTextFont.copyWith(fontSize: 16),
                  ),
                  onPressed: () {
                    Provider.of<PageBloc>(context, listen: false)
                        .add(GoToRegistrationPage(RegistrationData()));
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have an account? ",
                    style: greyTextFont.copyWith(fontWeight: FontWeight.w400),
                  ),
                  GestureDetector(
                    onTap: () {
                      Provider.of<PageBloc>(context, listen: false)
                          .add(GoToLoginPage());
                    },
                    child: Text(
                      "Sign In",
                      style: purpleTextFont,
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
