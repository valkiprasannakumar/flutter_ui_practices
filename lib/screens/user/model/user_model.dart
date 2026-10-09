class UserModel {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final PersonDetails person;
  final PersonImage image;

  UserModel({
    required this.gender,
    required this.email,
    required this.phone,
    required this.cell,
    required this.nat,
    required this.person,
    required this.image,
  });
}

class PersonDetails {
  final String title;
  final String first;
  final String last;

  PersonDetails({required this.title, required this.first, required this.last});
}

class PersonImage {
  final String large;
  final String medium;
  final String thumbnail;
  PersonImage({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });
}
