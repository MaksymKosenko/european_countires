import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: ()=> Navigator.pop(context),),
        title: Text("Countries"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(color: Colors.white, height: 400,),
            SizedBox(height: 20,),
            dataRow(),
          ],
        ),
      ),
    );
  }

  Widget dataRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("numericCode"),
        Text("borders"),
        Text("currencies"),
      ],
    );
  }
}
