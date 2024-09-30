
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String cType = "none";

  @override
  void initState() {
    super.initState();

    checkConnection();

    // Listen to the network connection type change
    Connectivity().onConnectivityChanged.listen((dynamic result) {
      if (result is ConnectivityResult) {
        if (result == ConnectivityResult.mobile) {
          cType = "Mobile Data";
        } else if (result == ConnectivityResult.wifi) {
          cType = "Wifi Network";
        } else if (result == ConnectivityResult.ethernet) {
          cType = "Ethernet Network";
        } else if (result == ConnectivityResult.bluetooth) {
          cType = "Bluetooth Data connection";
        } else {
          cType = "None";
        }

        setState(() {
          // Refresh the UI with the new connection type
        });
      }
    });



  }

  checkConnection() async{
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      cType = "Mobile Data";
    } else if (connectivityResult == ConnectivityResult.wifi) {
      cType = "Wifi Network";
    }else if(connectivityResult == ConnectivityResult.ethernet){
      cType = "Ethernet Network";
    }else if(connectivityResult == ConnectivityResult.bluetooth){
      cType = "Blutooth Data connection";
    }else{
      cType = "none";
    }

    setState(() {
      //refresh UI
    });
  }

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
        appBar: AppBar(
            title: Text("Check Connection Type"),
            backgroundColor: Colors.redAccent
        ),
        body: Container(
            padding: EdgeInsets.only(top:20, left:20, right:20),
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Text("Connection Type: $cType", style: TextStyle(fontSize: 20),),
              ],)
        )
    );
  }
}
