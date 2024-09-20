// To parse this JSON data, do
//
//     final postResponse = postResponseFromJson(jsonString);

import 'dart:convert';

PostResponse postResponseFromJson(String str) => PostResponse.fromJson(json.decode(str));


class PostResponse {
  final String? token;

  PostResponse({
    this.token,
  });

  factory PostResponse.fromJson(Map<String, dynamic> json) => PostResponse(
    token: json["token"],
  );

}
