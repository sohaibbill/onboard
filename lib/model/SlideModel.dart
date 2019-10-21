import 'package:flutter/material.dart';

class SLide {

  final String title;
  final String desc;
  final String img;


  SLide({
    @required this.title,
    @required this.desc,
    @required this.img
  });

}


final slideList = [
  SLide(
    title : "Title one",
    desc : "Creating games, apps and websites requires access to many different skill sets.",
    img : "assets/image/mobile.png"
  ),

  SLide(
    title : "Title Two",
    desc : "Creating games, apps and websites requires access to many different skill sets.",
    img : "assets/image/mobile2.png"
  ),

  SLide(
    title : "Title three",
    desc : "Creating games, apps and websites requires access to many different skill sets.",
    img : "assets/image/mobile3.png"
  ),
];