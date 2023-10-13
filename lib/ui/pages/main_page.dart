part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<UserBloc, UserState>(
                builder: (_, userState) => (userState is UserLoaded)
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Halo Selamat Datang: ${userState.user.name}',
                            style: blackTextFont.copyWith(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Tempat Kosan Yang anda Pilih: ${userState.user.selectedCity}',
                            style: blackTextFont.copyWith(
                              fontSize: 16,
                            ),
                          )
                        ],
                      )
                    : SizedBox()),
            SizedBox(
              height: 30,
            ),
            Text(
              'Silahkan Klik Sign Out Untuk Keluar',
              style: blackTextFont.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  AuthServices.signOut();
                },
                child: Text(
                  'Sign Out',
                )),
          ],
        ),
      ),
    );
  }
}
