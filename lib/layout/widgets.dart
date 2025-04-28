import 'package:flutter/material.dart';


PreferredSizeWidget customAppar(String title) {
  return AppBar(
    backgroundColor: Colors.white,
    title: Text(
      title,
      style: TextStyle(color: Colors.black),
    ),

  );

}
Widget AnswerCard(String text,BuildContext context,{bool? answer}) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.1,
    width: MediaQuery.of(context).size.width,
    child:  Card(
      color: (answer==null)
        ?Colors.white
      :(answer)
        ? Colors.green
      : Colors.red,
      shape:RoundedRectangleBorder(
  borderRadius: BorderRadius.all(Radius.circular(20))),
      elevation:3.5,
      child: Padding (
        padding: const EdgeInsets.all(10.0),
        child: Center(
        child: Text(
            text,
          style:TextStyle(color:Colors.black,fontSize: 18),
          textAlign: TextAlign.center,
        ),
        ),
      ),
    ),
  );
}
TextStyle headerTextStyle({Color color = Colors.black}){
  return TextStyle(
    color:color, fontSize: 24,fontWeight: FontWeight.bold);

}
TextStyle normalTextStyle({Color color = Colors.black}){
  return TextStyle(
      color:color, fontSize: 14,fontWeight: FontWeight.normal);

}