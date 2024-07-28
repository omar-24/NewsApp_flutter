import 'package:flutter/material.dart';
import 'package:newsapp/models/report.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Report reportdata = ModalRoute.of(context)!.settings.arguments as Report;
    return Scaffold(
      appBar: AppBar(
        title: Text("Details",style: TextStyle(fontWeight: FontWeight.bold),),
        flexibleSpace:Container(
          decoration: BoxDecoration(gradient:
          LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.cyan,Colors.yellow]
          )),),
      ),

      body:Column(
        children: [
          reportdata.image!=null?Image.network("${reportdata.image!}"):Image.asset("images/null_image.png"),
          SizedBox(height: 20,),
          Text("${reportdata.title}",textAlign:TextAlign.center,style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
          SizedBox(height: 30,),
          Text("${reportdata.description!=null?reportdata.description!:"This report is without description"}"),
        ],
      ) ,
    );
  }
}
