part of 'services.dart';

class UserServices {
  static CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('users');

  static Future<void> updateUser(User user) async {
    _userCollection.doc(user.id).set({
      'email': user.email,
      'name': user.name,
      'selectedFavorite': user.selectedFavorite,
      'selectedCity': user.selectedCity,
      'profilePicture': user.profilePicture ?? "",
    });
  }

  static Future<User> getUser(String id) async {
    DocumentSnapshot snapshot = await _userCollection.doc(id).get();
    Map<String, dynamic>? data = snapshot.data() as Map<String, dynamic>?;

    return User(
      id,
      data?['email'] ?? "",
      name: data?['name'] ?? "",
      profilePicture: data?['profilePicture'] ?? "",
      selectedFavorite:
          (data?['selectedFavorite'] as List).map((e) => e.toString()).toList(),
      selectedCity: data?['selectedCity'] ?? "",
    );
  }
}
