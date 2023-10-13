part of 'models.dart';

class RegistrationData {
  String name;
  String email;
  String password;
  List<String> selectedFavorite;
  String selecetedCity;
  File? profileImage;

  RegistrationData(
      {this.name = "",
      this.email = "",
      this.password = "",
      this.selectedFavorite = const [],
      this.selecetedCity = "",
      this.profileImage});
}
