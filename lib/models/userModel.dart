class UserModel {
  late final String uId;
  late final String name;
  late final String email;
  late final String password;
  late final String phone;

  UserModel({
    required this.uId,
    required this.name,
    required this.password,
    required this.email,
    required this.phone,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    uId = json['uId'] ?? '';
    name = json['name'] ?? '';
    password = json['password'] ?? '';
    email = json['email'] ?? '';
    phone = json['phone'] ?? '';
  }

  Map<String, dynamic> toJson() {
    return {
      'uId': uId,
      'name': name,
      'password': password,
      'email': email,
      'phone': phone,
    };
  }
}
