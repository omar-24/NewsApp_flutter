import 'package:flutter/material.dart';
import 'package:newsapp/models/Category.dart';
import 'package:newsapp/screens/homescreen.dart';
import 'package:newsapp/services/get_new_service.dart';
import 'package:newsapp/widget/news_card.dart';

class Category_card extends StatefulWidget {
  const Category_card({Key? key, required this.CATEGORY}) : super(key: key);
  final Category CATEGORY;

  @override
  State<Category_card> createState() => _Category_cardState();
}

class _Category_cardState extends State<Category_card> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: (){
          setState(() {
          Selected_category=widget.CATEGORY.title;
          Navigator.push(context, MaterialPageRoute(builder:(_){return homescreen();}));
          });
          print("$Selected_category");
        },
        child: Container(width: 225,height: 75,
          decoration:BoxDecoration(borderRadius:BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(widget.CATEGORY.image),fit:BoxFit.fill)),
          child: Text(''),),
      ),
    );
  }
}
