import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:newsapp/main.dart';
import 'package:newsapp/models/Category.dart';
import 'package:newsapp/widget/Category_Scroll.dart';
import 'package:newsapp/widget/News_Scroll.dart';
import 'package:newsapp/widget/category_card.dart';
import 'package:newsapp/widget/news_card.dart';

class homescreen extends StatelessWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News App",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient:
          LinearGradient(
              begin:Alignment.topLeft,
              end:Alignment.bottomRight,
              colors: [Colors.black87,Colors.black54]
          ) ),),
      ),


        drawer: Drawer(

          child: Container(padding: EdgeInsets.all(15),
            child: ListView(children: [
              SizedBox(height: 25,),

              Row(children:[
                Container(width: 75,height: 75,
                  child: ClipRRect(borderRadius:BorderRadius.circular(50),
                    child: Image.asset("images/CR7.jpg",fit:BoxFit.fill,),
                  ),),
                Expanded(
                  child: ListTile(
                    title: Text("Omar Adel",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),),
                    subtitle: Text(" omar123@gmail.com",style: TextStyle(fontSize: 14),),
                  ),
                )
              ],),
              //
              SizedBox(height: 30),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),

              SizedBox(height: 15,),
              InkWell(
                onTap: (){},
                child: ListTile(
                  leading: Icon(Icons.change_circle),
                  title: Text("Change Country",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),

              SizedBox(height: 15,),

              InkWell(
                onTap: (){},
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("Contact us",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),

              SizedBox(height: 15,),

              InkWell(
                onTap: (){},
                child: ListTile(
                  leading: Icon(Icons.info),
                  title: Text("About us",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),

              SizedBox(height: 15,),

              InkWell(
                onTap: (){},
                child: ListTile(
                  leading: Icon(Icons.output),
                  title: Text("SignOut",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
            ],),
          ),

        ),

        body:CustomScrollView(slivers: [
          SliverToBoxAdapter(child:SizedBox(height: 10,),),
          SliverToBoxAdapter(child: Category_Scroll()),
          SliverToBoxAdapter(child:SizedBox(height: 10,),),
          News_Scroll()
        ],),
    );
  }
}
