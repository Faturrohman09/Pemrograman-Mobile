// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  final tagList = ['Woman', 'T-Shirt', 'Dress'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25,left: 25,right: 25),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child : TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                    hintText: 'Search Aesthetics T-Shirt',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 18
                    ),
                    prefixIcon: Container(
                      padding: EdgeInsets.all(15),
                      child: Image.asset('assets/icons/search.png',width: 20),
                    )
              ),
              ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Image.asset('assets/icons/filter.png',width: 25),
              )
            ],
          ),
          Row(
            children:
              tagList.map((e) => Container(
                margin: EdgeInsets.only(top: 10 ,right: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).accentColor),
                child: Text(e),
              ))
              .toList(),
          ),
        ],
          ),
    );
  }
  }

