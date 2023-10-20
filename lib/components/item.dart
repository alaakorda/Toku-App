import 'package:flutter/material.dart';
import 'package:languagelearning/models/numbers.dart';

class Item extends StatelessWidget {
  const Item({Key? key, required this.number}) : super(key: key);
  final Numbers number;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Color(0XFFFA9532),
          height: 100,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Container(
                  color: Color(0XffFFF6DC),
                  child: Image(
                    image: AssetImage(number.image),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    number.JpNum,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    number.EnNum,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
              Spacer(flex: 1),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}