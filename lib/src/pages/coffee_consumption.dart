import 'package:flutter/material.dart';

class CoffeeConsumption extends StatefulWidget {
  @override
  _CoffeeConsumptionState createState() => _CoffeeConsumptionState();
}

class _CoffeeConsumptionState extends State<CoffeeConsumption> {
  Color _corBody = Color(0xfff8e7d3);

  _body(){
    return Container(
      color: _corBody,

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade600,
        title: Text('Gráfico de consumo'),
        centerTitle: true,
      ),
      body: _body(),
    );
  }
}
