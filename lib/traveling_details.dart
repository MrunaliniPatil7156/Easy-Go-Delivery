import 'package:flutter/material.dart';

class TravelDetails extends StatefulWidget {
  const TravelDetails({ Key? key }) : super(key: key);

  @override
  State<TravelDetails> createState() => _TravelDetailsState();
}

class _TravelDetailsState extends State<TravelDetails> {
  String groupValue="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Travel Details")),
      body:  Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            const Text("Travel routing"),
            Row(
              children: <Widget>[
                Radio(value: "Bus", groupValue: groupValue, onChanged:(value){
                  setState(() {
                    groupValue = value as String;
                  });
                })
              ],
            )
          ]),
      ),
    );
  }
}