import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _ctrlUser = TextEditingController();
  final _ctrlPassword = TextEditingController();
  GlobalKey _key = GlobalKey<FormState>();

  inputUser(String text) {
    return TextFormField(
      controller: _ctrlUser,
      autofocus: true,
      maxLines: 1,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: text,
        labelStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 20.0,
        ),
      ),
      style: TextStyle(fontSize: 20.0, color: Colors.white),
    );
  }

  inputPassword(String text) {
    return TextFormField(
      controller: _ctrlPassword,
      autofocus: true,
      obscureText: true,
      maxLines: 1,
      maxLength: 20,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: text,
        labelStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 20.0,
        ),
      ),
      style: TextStyle(fontSize: 20.0, color: Colors.white),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _key,
        child: ListView(
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
              height: 256,
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.brown.shade400,
                borderRadius: const BorderRadius.all(const Radius.circular(16.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  inputUser('Usuário'),
                  inputPassword('Senha'),
                  SizedBox(height: 20,),
                  button('Entrar'),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

button(String text) {
  return RaisedButton(
    color: Colors.amber,
//    onPressed: () {
//      Navigator.push(context, MaterialPageRoute(builder: (context) => ()));
//    }
    child: SizedBox(
      width: 226,
      child: Container(
        padding: EdgeInsets.all(8.0),
        height: 44,
        width: double.infinity,
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
      ),
    ),
  );
}
