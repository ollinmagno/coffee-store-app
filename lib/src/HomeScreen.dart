import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _body() {
    return Container(
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
          ),
          SizedBox(height: 40,),
          Text("Bem-vindo, User", style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Coffee'),
        centerTitle: true,
      ),
      body: _body(),
    );
  }


}
