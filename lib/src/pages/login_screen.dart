import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:coffeebreak/src/pages/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _controllerUser = TextEditingController();
  final _controllerPassword = TextEditingController();
  final _key = GlobalKey<FormState>();
  final focusNode = FocusNode();

  Color colorLogin = Color(0xffbb7f67);

  _validateLogin() {
    _validate();
    String user = _controllerUser.text;
    String password = _controllerPassword.text;
    print('$user, $password');

  }

  _validate() {
    if (!_key.currentState.validate()) {
      return;
    }
  }

  inputUser(String text) {
    return TextFormField(
      controller: _controllerUser,
      autofocus: true,
      maxLines: 1,
      keyboardType: TextInputType.text,
      validator: (String user) {
        if (user.isEmpty) {
          return 'Informe seu usuário';
        }
        return null; 
      },
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

  inputPassword(String text, {Function validator}) {
    return TextFormField(
      controller: _controllerPassword,
      autofocus: true,
      obscureText: true,
      maxLines: 1,
      maxLength: 20,
      keyboardType: TextInputType.text,
      validator: (String password) {
        if (password.isEmpty) {
          return 'Informe sua senha';
        } else if (password.length < 6) {
          return 'Senha incorreta';
        }
        return null;
      },
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
              height: 80,
            ),
            Image.asset('assets/images/coffee.png'),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 120,
              height: 300,
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: colorLogin,
                borderRadius:
                    const BorderRadius.all(const Radius.circular(16.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  inputUser('Usuário'),
                  inputPassword('Senha'),
                  SizedBox(
                    height: 20,
                  ),
                  _button('Entrar', context, onPressed: _validateLogin),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_button(String text, context, {Function onPressed}) {
  return RaisedButton(
    color: Colors.amber,
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
    onPressed: onPressed,
  );
}
