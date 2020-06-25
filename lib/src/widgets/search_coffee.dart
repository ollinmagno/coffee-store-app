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
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey.shade100,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Coffee',
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.amber.shade600,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 12),
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