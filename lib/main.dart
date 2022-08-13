import 'package:flutter/material.dart';
import 'package:mrunal_work/traveling_details.dart';
import 'package:mrunal_work/past_delivaries.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Home",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: ListView(padding: EdgeInsets.zero,
            children:<Widget>[
             const Divider(
                height: 1,
                thickness: 1,
              ),
              ListTile(
                title: const Text("Tavel Details") ,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const TravelDetails()));
                },
              ),
              ListTile(
                title: const Text('Past Delivaries'),
                
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PastDelivaries()));
                },
            
              ),
            ]
          ),
      
      ),
    );
  }
}


