class UserModel {
  String email;
  String password;
  String? name;
  String? phone;
  String? gender;
  String? passwordConfirmation;

  UserModel({
    required this.email,
    required this.password,
    this.name,
    this.phone,
    this.gender,
    this.passwordConfirmation,
  });

  Map<String, dynamic> toJson() {
    return {
      "email": email,
      "password": password,
      "name": name,
      "phone": phone,
      "gender": gender,
      "password_confirmation": passwordConfirmation,
    };
  }
}
