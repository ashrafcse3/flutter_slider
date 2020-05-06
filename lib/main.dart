import 'package:flutter/material.dart';
import './widgets/slide_dots.dart';
import './models/slide.dart';
import './widgets/slide_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Slider(),
      ),
    );
  }
}

class Slider extends StatefulWidget {
  @override
  _SliderState createState() => _SliderState();
}

class _SliderState extends State<Slider> {
  int _currentPage = 0;

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(15),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            PageView.builder(
              itemCount: slideList.length,
              onPageChanged: _onPageChanged,
              itemBuilder: (context, index) => SlideItem(index),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: <Widget>[
                for (int i = 0; i < slideList.length; i++)
                  if (i == _currentPage) SlideDots(true) else SlideDots(false)
              ],
            )
          ],
        ),
      ),
    );
  }
}
