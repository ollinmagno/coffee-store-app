import 'package:flutter/material.dart';


class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('User user'),
              accountEmail: Text('user@email.com.br'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(''),
              ),
            ),
            ListTile(
              leading: Icon(Icons.star, color: Colors.amber.shade600,),
              title: Text('Favoritos'),
              subtitle: Text('favoritos'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                print('Item 1');
                Navigator.pop(context);
              }
            )
          ],
        ),
      ),
    );
  }
}
