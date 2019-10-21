import 'package:flutter/material.dart';
import 'package:ind/model/SlideModel.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index); 
  @override
  Widget build(BuildContext context) {
    return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(slideList[index].img),
                                fit: BoxFit.cover,
                              )
                            ),
                          ),
                          SizedBox(height:10),
                          Text(
                            slideList[index].title,
                            style: TextStyle(fontSize: 22,fontFamily: "Cairo"),
                            textAlign: TextAlign.center,
                            ),
                          SizedBox(height:20),
                          Text(
                            slideList[index].desc,
                            style: TextStyle(fontSize: 16,fontFamily: "Cairo"),
                            textAlign: TextAlign.center,
                            )
                            ,
                        ],
                      );
  }
}