import 'package:flutter/material.dart';

class SearchCoffee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
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
                TextStyle(color: Colors.amber.shade600, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}