import 'package:flutter/material.dart';
class WhatsAppUi extends StatefulWidget {
  const WhatsAppUi({super.key});
  @override
  State<WhatsAppUi> createState() => _WhatsAppUiState();
}

class _WhatsAppUiState extends State<WhatsAppUi> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: const Text('WhatsApp'),
          actions: const [
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 12,),
            Icon(Icons.search),
            SizedBox(width: 10,),
            Icon(Icons.more_vert_outlined),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.grey,
            indicatorSize:TabBarIndicatorSize.tab,
            tabs: [
              Icon(Icons.person_add_sharp),
              Text("Chats"),
              Text("Updates"),
              Text("Calls"),
            ],
          ),
        ),
        body:  TabBarView(children: [
          const Center(
            child: SizedBox(
              child: Text("No Data"),
            ),
          ),
          ListView.builder(
            itemCount: 100,
              itemBuilder:(BuildContext context, int index){
              return ListTile(
                leading:  const CircleAvatar(
                  child: Center(child: Icon(Icons.person)),
                ),
                title: const Text("John wick"),
                subtitle: const Text("Flutter Developer"),
                trailing: Text('${DateTime.now()}')
              );
              } ),
          const Updates(),
          const Calls(),
        ],

        ),
      ),

    );
  }
}

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 10.0,right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Status",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Icon(Icons.more_vert_outlined),
          ],),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 30,
                itemBuilder:(BuildContext context, int index){
                return  Container(
                   margin: const EdgeInsets.only(left: 10),
                  child: const CircleAvatar(
                    child: Center(child: Icon(Icons.person)),
                  ),
                );

            } ),
          ),
          SizedBox(height: 20,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Channels",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Icon(Icons.add),
            ],),
        ],
      ),
    );
  }
}
class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index){
          return  ListTile(
            leading:const CircleAvatar(
              child: Center(child: Icon(Icons.person)),
            ),
            title: Text("Anuj bro"),
            subtitle: Text('${DateTime.now()}'),
            trailing: index%2==0 ?const Icon(Icons.video_call,color: Colors.greenAccent,):const Icon(Icons.call, color: Colors.red,),
          );

        });
  }
}

