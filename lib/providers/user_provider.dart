import 'dart:convert';
import 'package:get/get.dart';

class UserProvider extends GetConnect {
  final url =
      "https://nusantaraapi---project-default-rtdb.asia-southeast1.firebasedatabase.app/";

  // Post
  Future<Response> postData(String name, String email, String phone) {
    final body = json.encode({
      "name": name,
      "email": email,
      "phone": phone,
    });
    return post(url + "users.json", body);
  }

  // Delete
  Future<Response> deleteData(String id) {
    return delete(url + "users/$id.json");
  }

  // Edit
  Future<Response> editData(
      String id, String name, String email, String phone) {
    final body = json.encode({
      "name": name,
      "email": email,
      "phone": phone,
    });
    return patch(url + "users/$id.json", body);
  }
}
