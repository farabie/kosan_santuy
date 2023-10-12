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
      return SignInSignUpResult(
        message: e.toString(),
      );
    }
  }
}

class SignInSignUpResult {
  final User? user;
  final String? message;

  SignInSignUpResult({this.user, this.message});
}
