// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uts_flutter/screens/home/widget/category_list.dart';

class BestSell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoriesList('Best Of Sell'),
          Card(
            margin: EdgeInsets.symmetric(
              horizontal: 25,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/best1.png',
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Miniso Woman Over Size',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, height: 1.5),
                        ),
                        Text(
                          'T-Shirt',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, height: 1.5),
                        ),
                        Text('Rp. 2.000.000',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                                color: Theme.of(context).primaryColor))
                      ],
                    )
                  ]),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 15,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
