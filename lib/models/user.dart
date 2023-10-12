part of 'models.dart';

class User extends Equatable {
  final String id;
  final String email;
  final String name;
  final String profilePicture;
  final List<String> selectedFavorite;
  final String selectedCity;

  @override
  String toString() {
    return "{$id} - $name, $email";
  }

  User(
    this.id,
    this.email, {
    this.name = "",
    this.profilePicture = "",
    this.selectedFavorite = const [],
    this.selectedCity = " ",
  });
  List<Object?> get props => [
        id,
        email,
        name,
        profilePicture,
        selectedFavorite,
        selectedCity,
      ];
}
