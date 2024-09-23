import 'package:flutter/material.dart';

InputDecoration AppInputStyle( label){
  return InputDecoration(
    contentPadding: const EdgeInsets.fromLTRB(20, 30, 40, 20),
    labelText: label,
    hintText: 'Inter a number',
    fillColor: Colors.transparent,
    filled: true,

    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5))
    )
  );
}
TextStyle HeadTextStyle(){
  return const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 40,

  );
}
ButtonStyle buttonStyle(){
  return ElevatedButton.styleFrom(
    padding:const EdgeInsets.all(20),
    backgroundColor: Colors.green,


  );
}


