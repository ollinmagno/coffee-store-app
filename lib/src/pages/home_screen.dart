import 'package:coffeebreak/src/pages/bottom_navigation.dart';
import 'package:coffeebreak/src/widgets/column_banner.dart';
import 'package:coffeebreak/src/widgets/search_coffee.dart';
import 'package:coffeebreak/src/utils/colors.dart';
import 'package:coffeebreak/src/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  _body() {
    return Container(
      color: bodyColor,
      child: ListView(
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
            height: 180.0,
            margin: EdgeInsets.only(top: 16.0, left: 12.0, right: 12.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ColumnBanner(img: 'assets/images/coffee-banner01.png', text: 'Text exemplo'),
                SizedBox(width: 12,),
                ColumnBanner(img: 'assets/images/coffee-banner02.png', text: 'Text exemplo'),
                SizedBox(width: 12,),
                ColumnBanner(img: 'assets/images/coffee-banner03.png', text: 'Text exemplo'),
              ],
            ),
          ),
          Container(
            height: 180.0,
            margin: EdgeInsets.only(top: 16.0, left: 12.0, right: 12.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ColumnBanner(img: 'assets/images/coffee-banner04.png', text: 'Text exemplo'),
                SizedBox(width: 12,),
                ColumnBanner(img: 'assets/images/coffee-banner06.png', text: 'Text exemplo'),
                SizedBox(width: 12,),
                ColumnBanner(img: 'assets/images/coffee-banner07.png', text: 'Text exemplo'),
              ],
            ),
          ),
        ],
      ),
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
