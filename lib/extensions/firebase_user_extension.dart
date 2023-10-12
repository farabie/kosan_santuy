part of 'extensions.dart';

extension FirebaseUserExtension on auth.UserCredential {
  User convertToUser({
    String name = "No name",
    List<String> selectedFavorite = const [],
    String selectedCity = "Jakarta",
  }) =>
      User(
        user!.uid,
        user!.email!,
        name: name,
        selectedFavorite: selectedFavorite,
        selectedCity: selectedCity,
      );
}
