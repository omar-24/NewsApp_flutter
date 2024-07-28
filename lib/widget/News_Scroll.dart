import 'package:flutter/material.dart';
import 'package:newsapp/models/report.dart';
import 'package:newsapp/services/get_new_service.dart';
import 'package:newsapp/widget/news_card.dart';

class News_Scroll extends StatefulWidget {
  const News_Scroll({Key? key}) : super(key: key);

  @override
  State<News_Scroll> createState() => _News_ScrollState();
}

class _News_ScrollState extends State<News_Scroll> {
  List<Report> FINAl_DATA_LIST=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GETDATA();
  }
  void GETDATA() async{
    FINAl_DATA_LIST = await GetNewsService().getNews();
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return SliverList(delegate:SliverChildBuilderDelegate((BuildContext context,i){
      return News_card(report: FINAl_DATA_LIST[i]);
    },childCount: FINAl_DATA_LIST.length)) ;
  }
}
