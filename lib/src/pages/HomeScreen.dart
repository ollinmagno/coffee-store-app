import 'package:coffeebreak/src/widgets/search_coffee.dart';
import 'package:coffeebreak/src/widgets/drawer.dart';
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
            Padding(padding: EdgeInsets.all(8.0)),
            SizedBox(height: 40,),
            Text("Bem-vindo, User", style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
            SizedBox(width: 140,),
            Container(
              margin: EdgeInsets.all(8.0),
              child: Icon((Icons.account_circle), size: 36),
            ),
          ],
        ),
        Row(
          children: <Widget>[
          Padding(padding:  EdgeInsets.all(8.0),),
          Text('Qual café você deseja ?'),
          ],
        ),
        SizedBox(height: 16.0,),
        SearchCoffee(),
        SizedBox(height: 16.0,),
        Container(
          height: 208.0,
          margin: EdgeInsets.all(16.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _image('assets/images/coffee-banner01.png'),
              _space(16.0),
              _image('assets/images/coffee-banner02.png'),
              _space(16.0),
              _image('assets/images/coffee-banner03.png'),
              _space(16.0),
            ],
          ),
        ),

        Container(
          height: 208.0,
          margin: EdgeInsets.all(16.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _image('assets/images/coffee-banner04.png'),
              _space(16.0),
              _image('assets/images/coffee-banner07.png'),
              _space(16.0),
              _image('assets/images/coffee-banner06.png'),
              _space(16.0),
            ],
          ),
        ),
      ],
    );
  }
  _space(num size){
    return SizedBox(width: 16.0);
  }

  _image(String img){
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Image.asset(img),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade600,
        title: Text('Coffee Store'),
        centerTitle: true,
      ),
      body: _body(),
      drawer: DrawerList(),
      //drawer: Drawer(),
    );
  }
}
