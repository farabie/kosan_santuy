part of 'services.dart';

class AuthServices {
  static auth.FirebaseAuth _auth = auth.FirebaseAuth.instance;

  static Future SignUp(String email, String password, String name,
      List<String> selecetedFavorite, String selecetedCity) async {
    try {
      auth.UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      User user = result.convertToUser(
        name: name,
        selectedFavorite: selecetedFavorite,
        selectedCity: selecetedCity,
      );
    } catch (e) {}
  }
}
