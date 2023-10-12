part of 'services.dart';

class AuthServices {
  static auth.FirebaseAuth _auth = auth.FirebaseAuth.instance;

  static Future<SignInSignUpResult> SignUp(String email, String password,
      String name, List<String> selecetedFavorite, String selecetedCity) async {
    try {
      auth.UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      User user = result.convertToUser(
        name: name,
        selectedFavorite: selecetedFavorite,
        selectedCity: selecetedCity,
      );

      await UserServices.updateUser(user);

      return SignInSignUpResult(user: user);
    } catch (e) {
      final errorParts = e.toString().split(',');
      if (errorParts.length > 1) {
        return SignInSignUpResult(message: errorParts[1]);
      } else {
        return SignInSignUpResult(message: e.toString());
      }
    }
  }

  static Future<SignInSignUpResult> signIn(
      String email, String password) async {
    try {
      auth.UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = await result.fromFireStore();
      return SignInSignUpResult(user: user);
    } catch (e) {
      final errorParts = e.toString().split(',');
      if (errorParts.length > 1) {
        return SignInSignUpResult(message: errorParts[1]);
      } else {
        return SignInSignUpResult(message: e.toString());
      }
    }
  }

  static Future<void> signOut() async {
    await _auth.signOut();
  }

  //Fungsi Untuk Token nantinya
  static Stream<auth.User?> get userStream => _auth.authStateChanges();
}

class SignInSignUpResult {
  final User? user;
  final String? message;

  SignInSignUpResult({this.user, this.message});
}
