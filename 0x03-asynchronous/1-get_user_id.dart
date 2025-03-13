import '0-util.dart';
import 'dart:convert';

Future<String> getUserId() {
    return fetchUserData().then((user) => json.decode(user)['id']);
}