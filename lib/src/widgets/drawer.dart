import 'package:coffeebreak/src/pages/coffee_consumption.dart';
import 'package:coffeebreak/src/pages/find_on_map.dart';
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FindOnMap()));
                  }
              ),
              Divider(color: Colors.black38),
              ListTile(
                  title: Text('Consumo'),
                  trailing: Icon(Icons.insert_chart, color: Colors.green,),
                  onTap: () {
                    print('');
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CoffeeConsumption()));
                  }
              ),
              Divider(color: Colors.black38),
              ListTile(
                  leading: Image.asset('assets/images/items/cup-coffee01.png', width: 55,),
                  title: Text('Café', textAlign: TextAlign.center),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    print('Item 1');
                    Navigator.pop(context);
                  }
              ),
              Divider(color: Colors.black38),
              ListTile(
                  leading: Image.asset('assets/images/items/cup-coffee02.png', width: 55),
                  title: Text('Capuchino', textAlign: TextAlign.center),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    print('Item 2');
                    Navigator.pop(context);
                  }
              ),
              Divider(color: Colors.black38),
              ListTile(
                  leading: Image.asset('assets/images/items/cup-coffee03.png', height: 44, width: 62),
                  title: Text('Expresso', textAlign: TextAlign.center),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    print('Item 3');
                    Navigator.pop(context);
                  }
              ),
              Divider(color: Colors.black38),
              ListTile(
                  leading: Image.asset('assets/images/items/cup-coffee07.png', height: 52, width: 62),
                  title: Text('Mocha', textAlign: TextAlign.center),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    print('Item 4');
                    Navigator.pop(context);
                  }
              ),
              Divider(color: Colors.black38),
              SizedBox(height: 40,),
              ListTile(
                  title: Text('Sair do app', style: TextStyle(color: Colors.red,
                      fontSize: 16.0, fontWeight: FontWeight.w400),),
                  onTap: () {
                    print('sair...');
                    Navigator.pop(context);
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
