import 'package:coffeebreak/src/search_coffee.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _body() {
    return ListView(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(8.0),),
            SizedBox(height: 40,),
            Text("Bem-vindo, User", style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
            SizedBox(width: 140,),
            IconButton(icon: Icon(Icons.account_circle, size: 36,),),
          ],
        ),
        Row(
          children: <Widget>[
          Padding(padding:  EdgeInsets.all(8.0),),
          Text('Qual café você deseja ?'),
          ],
        ),
        SizedBox(height: 10,),
        SearchCoffee(),
      ],

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade600,
        title: Text('Coffee'),
        centerTitle: true,
      ),
      body: _body(),

      drawer: Drawer(

      ),
    );
  }
}
