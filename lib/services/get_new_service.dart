import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/report.dart';

String Selected_category="general";
String Selected_country="eg";

class GetNewsService{
  final Dio dio = Dio();
  Future<List<Report>> getNews() async{
    Response response = await dio.get("https://newsapi.org/v2/top-headlines?country=$Selected_country&category=$Selected_category&apiKey=3e10e6570f904e459cc136737e3628e5");
    Map<String,dynamic> dataAsjcon = response.data;
    List<dynamic> articles = dataAsjcon["articles"];
    List<Report> ARTICLES = [];

    for(Map i in articles){
      // Report report = Report(
      //     image: i["urlToImage"],
      //     title: i["title"],
      //     description: i["description"]);

      ARTICLES.add(Report.fromjson(i));
    }
    return ARTICLES;
  }
}