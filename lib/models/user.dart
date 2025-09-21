class User {
  String id;
  String username;
  String email;
  String password;
  String? uid;

  User({
    this.id = '',
    required this.username,
    required this.email,
    required this.password,
    this.uid,
  });

  String toMapString() {
    return """
      {
        id: "$id",
        username: "$username",
        email: "$email",
        password: "$password",
        uid "$uid"
      }
        """;
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      username: map["id"] ?? '',
      email: map["email"] ?? '',
      password: map["password"] ?? '',
      uid: map["uid"] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {"username": username, "email": email, "password": password};
  }
}
