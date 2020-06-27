import 'package:flutter/material.dart';

class FindOnMap extends StatefulWidget {
  @override
  _FindOnMapState createState() => _FindOnMapState();
}

class _FindOnMapState extends State<FindOnMap> {
  _body() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade600,
        title: Text('Procurar...'),
        centerTitle: true,
      ),
      body: _body(),
    );
  }
}
