import 'package:flutter/material.dart';
import 'package:newsapp/models/report.dart';

class News_card extends StatelessWidget {
  const News_card({Key? key, required this.report}) : super(key: key);

  final Report report ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, "detailscreen",arguments: report);
        },
        child: Column(
          children: [
            ClipRRect(borderRadius: BorderRadius.circular(10),
              child: Image.asset("${report.image!=null?report.image!:"images/null_image.png"}"),),
            SizedBox(height: 5,),
            Text("${report.title}",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
              maxLines: 2,overflow: TextOverflow.ellipsis,
            ),
            Text("${report.description!=null?report.description!:"This report is without description"}",
              style: TextStyle(fontSize: 15),
              maxLines: 2,overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}


