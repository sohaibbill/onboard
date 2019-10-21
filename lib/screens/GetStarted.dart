import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ind/model/SlideModel.dart';
import 'package:ind/widgets/SlideInd.dart';
import 'package:ind/widgets/Slideitem.dart';

class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  int _currentPage = 0;
  final PageController _pageController = PageController(
    initialPage: 0
    );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer){
      if ( _currentPage < 2){
        _currentPage++;
      }else {
        _currentPage = 0;
      }
      _pageController.animateToPage(_currentPage,duration: Duration(milliseconds: 300),curve: Curves.easeOutCubic,);
      
      });
  }
  @override 
  void dispose(){
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) { 
    setState(() {
     _currentPage = index; 
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Expanded(
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: <Widget>[
                      PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller:_pageController,
                      onPageChanged:_onPageChanged,
                      itemCount: slideList.length,
                      itemBuilder: (ctx , i) => SlideItem(i),
                    ),
                    Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 35),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              for(int i = 0 ;i<slideList.length; i++)
                                if (i == _currentPage )
                                  SlideInd(true)
                                else 
                                  SlideInd(false)
                              
                            ],
                          ),
                        )
                      ],
                    )
                    ],
                                     
                  )
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                FlatButton(child: Text('Getting Started',style: TextStyle(fontSize: 18),),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.all(15),
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                onPressed: () {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  Text("Have An Account",style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor)),
                  FlatButton(
                    color: Theme.of(context).primaryColor,
                    child: Text(
                    "Login",
                    style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor),
                    ),
                   ),
                  
                ],)
              ],)
            ],
          ),
        ),
      )
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}