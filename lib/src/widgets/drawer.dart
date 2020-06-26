import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  Color _cor = Color(0xfff8e7d3);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Drawer(
        child: Container(
          color: _cor,
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.amber.shade400,
                    borderRadius: BorderRadius.circular(32.0)),
                accountName: Text('User user'),
                accountEmail: Text('user@email.com.br'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(''),
                ),
              ),

              ListTile(
                  title: Text('Encontrar'),
                  subtitle: Text('Cafeterias próximas'),
                  trailing: Icon(Icons.map),
                  onTap: () {
                    print('');
                    Navigator.pop(context);
                  }
              ),
              Divider(color: Colors.black38),
              ListTile(
                  title: Text('Consumo'),
                  trailing: Icon(Icons.insert_chart, color: Colors.green,),
                  onTap: () {
                    print('');
                    Navigator.pop(context);
                  }
              ),
              Divider(color: Colors.black38),
              ListTile(
                  title: Text('Café'),
                  leading: Image.asset('assets/images/items/cup-coffee01.png', height: 40),
                  onTap: () {
                    print('Item 1');
                    Navigator.pop(context);
                  }
              ),
              Divider(color: Colors.black38),
              ListTile(
                  leading: Image.asset('assets/images/items/cup-coffee02.png', height: 36),
                  title: Text('Capuchino'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    print('Item 2');
                    Navigator.pop(context);
                  }
              ),
              Divider(color: Colors.black38),
              ListTile(
                  leading: Image.asset('assets/images/items/cup-coffee03.png', height: 40),
                  title: Text('Expresso'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    print('Item 3');
                    Navigator.pop(context);
                  }
              ),
              Divider(color: Colors.black38),
              ListTile(
                  leading: Icon(Icons.cake,),
                  title: Text('Mocha'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    print('Item 4');
                    Navigator.pop(context);
                  }
              ),
              Divider(color: Colors.black38),
//              ListTile(
//                  leading: Icon(Icons.cake,),
//                  title: Text(''),
//                  trailing: Icon(Icons.keyboard_arrow_right),
//                  onTap: () {
//                    print('Item 5');
//                    Navigator.pop(context);
//                  }
//              ),
            ],
          ),
        ),
      ),
    );
  }
}
