import 'package:flutter/material.dart';


Widget buttonWidget({required String text, required VoidCallback onClicked,
  Color color = Colors.white,Color backgroundColor = Colors.black}){
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16)
      ),
      onPressed: onClicked,
      child: Text(text,style: TextStyle(fontSize: 20,color: color),)
  );
}