class Password {
  String _password;
  
  Password({required String password}) : _password = password;

  String get password => _password;

  set password(String password) {
    _password = password;
  }

  bool isValid() {
    return (password.length >= 8 && password.length <= 16) &&
        this.password.contains(RegExp(r"[A-Z]")) &&
        this.password.contains(RegExp(r"[a-z]")) &&
        this.password.contains(RegExp(r"[0-9]"));
  }

  @override
  String toString() => "Your Password is: ${this.password}";
}

class User extends Password {
  int id;
  String name;
  int age;
  double height;
  String _userPassword;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required String user_password,
  })  : _userPassword = user_password,
        super(password: user_password);

  String get user_password => _userPassword;

  set user_password(String newPassword) {
    _userPassword = newPassword;
    super.password = newPassword;
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'] ?? 0,
      name: userJson['name'] ?? '',
      age: userJson['age'] ?? 0,
      height: userJson['height'] ?? 0.0,
      user_password: userJson['user_password'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})';
  }
}
