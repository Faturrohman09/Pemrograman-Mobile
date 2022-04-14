import 'dart:html';

import 'package:flutter/material.dart';
import 'package:uts_flutter/models/clothes.dart';

class DetailPage extends StatelessWidget {
  final Clothes clothes;
  DetailPage(this.clothes);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Text('COMING SOON'),
        ],
      ),
    ));
  }
}
