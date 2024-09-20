// To parse this JSON data, do
//
//     final postRequest = postRequestFromJson(jsonString);

import 'dart:convert';



String postRequestToJson(PostRequest data) => json.encode(data.toJson());

class PostRequest {
  final String? email;
  final String? password;

  PostRequest({
    this.email,
    this.password,
  });


  Map<String, dynamic> toJson() => {
    "email": email,
    "password": password,
  };
}
