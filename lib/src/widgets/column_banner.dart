import 'package:flutter/cupertino.dart';

class ColumnBanner extends StatelessWidget {
  final String img;
  final String text;
  const ColumnBanner({Key key, this.img, this.text}) : super(key: key);

  @override
  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image.asset(
            img,
            height: 160,
          ),
        ),
        Text(text),
      ],
    );
  }
}
