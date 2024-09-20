




import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'getmodel1.dart';

class DioUsingGet1 extends StatefulWidget {
  const DioUsingGet1({super.key});

  @override
  State<DioUsingGet1> createState() => _DioUsingGet1State();
}

class _DioUsingGet1State extends State<DioUsingGet1> {
  final List<GetResponse2> lst = [];

  @override
  void initState() {
    super.initState();
    getApi1();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: lst.isEmpty
            ? Center(child: Text("No data Found"))
            : ListView.builder(
          itemCount: lst.length,
          itemBuilder: (BuildContext context, int index) {

            return Column(
              children: [

           Text(lst[index].company?.name.toString()?? ''),
           Text(lst[index].address?.geo?.lat.toString()?? ''),
           Text(lst[index].phone.toString()),





              ],
            );
          },
        ),
      ),
    );
  }
  getApi1()async{
    final dio=Dio();
    final response=await dio.get('https://jsonplaceholder.typicode.com/users');
   for(var i in response.data){
     lst.add(GetResponse2.fromJson(i));
     setState(() {

     });
   }
  }

   }



