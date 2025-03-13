import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    var data = await fetchUserData();
    var user = jsonDecode(data);
    return "Hello ${user['username']}";
  } catch (e) {
    return "error caught: $e";
  }
}

Future<String> loginUser() async {
  try {
    bool isValid = await checkCredentials();
    print("There is a user: $isValid");
    return isValid ? await greetUser() : "Wrong credentials";
  } catch (e) {
    return "error caught: $e";
  }
}
