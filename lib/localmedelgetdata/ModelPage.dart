import 'package:flutter/material.dart';

import 'models.dart';

class ModelPage extends StatefulWidget {
  const ModelPage({super.key});

  @override
  State<ModelPage> createState() => _ModelPageState();
}

class _ModelPageState extends State<ModelPage> {
  Models models=Models();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: models.lst.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Text(models.lst?[index].name?.toString()??''),
              Column(
                children: [
                  Text(models.lst[index].rollno.toString()),

                ],
              )
            ],

          );
        },
      ),
    );
  }
}
