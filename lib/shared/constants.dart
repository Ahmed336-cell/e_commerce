import 'package:flutter/material.dart';

const kTextInput = InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
    ),
    focusedBorder:
        OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
    filled: true,
    contentPadding: EdgeInsets.all(8));

const kStarsBar =Icon(Icons.star , color: Color.fromARGB(255, 255, 191, 0),size: 26,);

