import 'package:all_in_one/serchwithfilter/serarchmoldes.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  USerModel uSerModel=USerModel();
  TextEditingController searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: searchController,
              decoration: const InputDecoration(
                  hintText: "Search Here",
                  border: OutlineInputBorder()
              ),
              onChanged: (String value){
                setState(() {

                });
              },
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
                  itemCount: uSerModel.searchList.length,
                  itemBuilder: (BuildContext context, int index){
                    final name=uSerModel.searchList[index].name.toString();
                    if(searchController.text.isEmpty){
                      return ListTile(
                        leading: Text('Age:-${uSerModel.searchList[index].age.toString()}'),
                        title: Text('Name:-${uSerModel.searchList[index].name.toString()}'),
                        trailing: Text('Location:-${uSerModel.searchList[index].location.toString()}'),
                      );
                    }else if(name.toLowerCase().contains(searchController.text.toLowerCase().toString())){
                      return ListTile(
                        leading: Text('Age:-${uSerModel.searchList[index].age.toString()}'),
                        title: Text('Name:-${uSerModel.searchList[index].name.toString()}'),
                        trailing: Text('Location:-${uSerModel.searchList[index].location.toString()}'),
                      );
                    }
                    else{
                      return const SizedBox();
                    }
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
