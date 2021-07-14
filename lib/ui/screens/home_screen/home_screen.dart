import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Countries"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            searchRow(),
            Divider(
              color: Colors.amberAccent,
            ),
            countryItem(context),
            Divider(
              color: Colors.amberAccent,
            ),
            countryItem(context),
            Divider(
              color: Colors.amberAccent,
            ),
            customButton(),
          ],
        ),
      ),
    );
  }

  Widget countryItem(BuildContext context) {
    return GestureDetector(
      onTap: ()=> Navigator.pushNamed(context, "/Map"),
      child: Container(
        height: 64,
        decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(24)),
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("name"),
            Text("subregion"),
            Text("alpha2Code"),
            Text("flag"),
          ],
        ),
      ),
    );
  }

  Widget searchRow() {
    return Container(
      height: 48,
      decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(24)),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: TextField(
      autofocus: true,
      //controller: controller,
      //onChanged: (text) => onChangeFunc(text),
      style: TextStyle(color: Colors.white, fontSize: 20),
      decoration: InputDecoration(
        border: InputBorder.none,
        hintStyle: TextStyle(color: Colors.white, fontSize: 20),
        hintText: "Search",
      ),
    ),
    );
  }

  Widget customButton(){
    return GestureDetector(
      onTap: ()=> print("pressed"),
      child: Container(
        height: 40, width: 132,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.green),
        child: Center(child: Text("reload")),
      ),
    );
  }
}
