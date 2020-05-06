import 'package:flutter/material.dart';
import '../models/slide.dart';

class SlideItem extends StatelessWidget {
  final int index;

  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
              child: Center(child: Image.asset(slideList[index].imageUrl))),
          Text(
            slideList[index].title,
            style: TextStyle(fontSize: 18, fontFamily: 'Foros'),
          ),
          SizedBox(height: 10,),
          Text(
            slideList[index].description,
            style: TextStyle(fontSize: 12, color: Colors.grey, fontFamily: 'SourceSansPro')
          ),
          SizedBox(height: 40,),
        ],
      ),
    );
  }
}
