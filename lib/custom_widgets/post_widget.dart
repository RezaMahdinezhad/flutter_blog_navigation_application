import 'package:flutter/material.dart';

Widget getBlogPost({required String imageName, required String name}) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image(
          image: AssetImage('images/$imageName.png'),
        ),
      ),
      SizedBox(
        height: 20.0,
      ),
      Text(
        'برای 14 آبان $name : سیگنال خرید  ',
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
      ),
      SizedBox(
        height: 10.0,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'فروش روی 26.25',
            style: TextStyle(color: Colors.red),
          ),
          SizedBox(
            width: 5.0,
          ),
          Icon(
            Icons.sell,
            color: Colors.red,
          ),
          SizedBox(
            width: 20.0,
          ),
          Text(
            'خرید روی 23.25',
            style: TextStyle(color: Colors.green),
          ),
          SizedBox(
            width: 5.0,
          ),
          Icon(
            Icons.local_mall,
            color: Colors.green,
          ),
        ],
      ),
      Container(
        width: 200.0,
        child: Divider(
          color: Colors.black,
          thickness: 1.5,
        ),
      ),
    ],
  );
}
