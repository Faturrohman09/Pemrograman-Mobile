import 'package:flutter/material.dart';
import 'package:uts_flutter/models/clothes.dart';
import 'package:uts_flutter/screens/home/widget/category_list.dart';
import 'package:uts_flutter/screens/home/widget/clothes_item.dart';

class NewArrival extends StatelessWidget {
  final clothesList = Clothes.generatorClothes();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        CategoriesList('New Arrival'),
        Container(
          height: 280,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 25),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ClothesItem(clothesList[index]),
              separatorBuilder: (_, index) => SizedBox( width: 10,),
              itemCount: clothesList.length),
        )
      ]),
    );
  }
}
