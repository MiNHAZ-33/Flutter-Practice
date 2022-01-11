class UserData {
  final String email;
  final String password;
  UserData({required this.email, required this.password});
}

class Users {
  List<UserData> users = [];

  void addUser(String email, String password) {
    users.add(
      UserData(email: email, password: password),
    );
    print(Users);
  }
}
