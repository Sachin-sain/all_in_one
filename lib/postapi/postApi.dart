

import 'package:all_in_one/postapi/postApiResponse.dart';
import 'package:all_in_one/postapi/postrequest.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class PostApi extends StatefulWidget {
  const PostApi({super.key});

  @override
  State<PostApi> createState() => _PostApiState();
}

class _PostApiState extends State<PostApi> {

  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  var tokenchika='';
  final box=GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: emailController,
          ),
          SizedBox(height: 20,),
          TextFormField(
            controller: passwordController,
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: postApi,
            child: Text("Submit"),
          ),
          Text(box.read('Token')??''),
        ],
      ),
    );
  }
postApi()async{
    final dio= Dio();
    final request=PostRequest(
      email: emailController.text,
      password: passwordController.text,
    );
    final body=request.toJson();
    print(emailController.text.toString());
    print(passwordController.text.toString());
    final response=await dio.post('https://reqres.in/api/register',
      data: body,
      options:Options(
        headers: {
          'Authorization':"Bareer$tokenchika"
        }

    )
    );
    final userdata=PostResponse.fromJson(response.data);
    print(userdata.token);
    setState(() {
      tokenchika=userdata.token.toString();
      box.write('Token', tokenchika);


    });
}

}

