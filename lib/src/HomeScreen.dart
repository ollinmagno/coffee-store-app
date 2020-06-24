import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          SizedBox(
            height: 60,
          ),
          Stack(
            children: <Widget>[
              Positioned(
                child: SvgPicture.asset(
                  'assets/images/coffee-cup-1.svg',
                  width: 224,
                  height: 224,
                ),
              ),
              Positioned(
                left: 40,
                child: SvgPicture.asset(
                  'assets/images/coffee-cup-2.svg',
                  width: 224,
                  height: 224,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: 120,
            height: 144,
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.brown.shade400,
              borderRadius: const BorderRadius.all(const Radius.circular(16.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                button('Entrar'),
                button('Cadastrar'),
//              inputText('Usuário'),
//                      inputText('Senha'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget button(String text) {
  return RaisedButton(
    color: Colors.amber,
    onPressed: () {},
    child: SizedBox(
      width: 200,
      child: Container(
        padding: EdgeInsets.all(8.0),
        height: 40,
        width: double.infinity,
        child: Text(
          text,
          style: TextStyle(fontSize: 16.0),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}

Widget inputText(String text) {
  return TextField(
    autofocus: false,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      labelText: text,
      labelStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontSize: 16.0,
      ),
    ),
    style: TextStyle(fontSize: 16.0, color: Colors.white),
  );
}
