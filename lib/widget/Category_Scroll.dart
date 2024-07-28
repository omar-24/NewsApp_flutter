import 'package:flutter/material.dart';
import 'package:newsapp/models/Category.dart';
import 'package:newsapp/widget/category_card.dart';


class Category_Scroll extends StatelessWidget {
  const Category_Scroll({Key? key}) : super(key: key);
  final List<Category> CATEGORY_LIST= const[
    Category(image: "images/business.png", title: "business"),
    Category(image: "images/entertainment.png", title: "entertainment"),
    Category(image: "images/general.png", title: "general"),
    Category(image: "images/health.png", title: "health"),
    Category(image: "images/technology.png", title: "technology"),
    Category(image: "images/sports.png", title: "sports"),
    Category(image: "images/science.png", title: "science"),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(height: 75,
        child: ListView.builder(itemBuilder: (context,i){
          return Category_card(CATEGORY: CATEGORY_LIST[i]);
        },itemCount: CATEGORY_LIST.length,scrollDirection: Axis.horizontal,),
      ),
    );
  }
}
