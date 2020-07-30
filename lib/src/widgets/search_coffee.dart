import 'package:flutter/material.dart';

class SearchCoffee extends StatelessWidget {
  Color _cor = Color(0xfff8e7d3);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: _cor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.grey.shade100,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(2, 2),
                    ),
                  ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Coffee',
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black45,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16.0),
              child: Text(
                'Filtros',
                style:
                TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}