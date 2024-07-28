import 'package:flutter/material.dart';

class Report{
  final String? image;
  final String title;
  final String? description;

  Report({required this.image, required this.title, required this.description});

  factory Report.fromjson(json){
    return Report(image: json["urlToImage"], title:json["title"] , description: json["description"]);
  }
}