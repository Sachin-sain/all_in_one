
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class ImagePickerExample extends StatefulWidget {
  const ImagePickerExample({super.key});
  @override
  State<ImagePickerExample> createState() => _ImagePickerExampleState();
}

class _ImagePickerExampleState extends State<ImagePickerExample> {
final ImagePicker picker=ImagePicker() ;
File? _image;

Future getImage()async{
 final pickImage=await picker.pickImage(source: ImageSource.camera)  ;
 setState(() {
    if(pickImage!=null){
      _image=File(pickImage.path);
    }else{
      if (kDebugMode) {
        print("No Image pick");
      }
    }
 });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: const Text("Image picker"),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Center(
           child: _image==null ?const Text("No file selected"):SizedBox(
             height: 50,
               width: 200,
               child: Image.file(_image!))
          ),
          const SizedBox(height: 10,),
        GestureDetector(
          onTap: (){
            getImage();
          },
          child: const Center(
            child: Text("Pick Image"),
          ),
        )
        ],
      ),
    );
  }
}
