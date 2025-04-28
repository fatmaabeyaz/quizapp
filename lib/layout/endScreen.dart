import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizuygulamasii/layout/quizSayfasi.dart';
import 'package:quizuygulamasii/layout/widgets.dart';

import '../main.dart';

 class EndScreen extends StatelessWidget {
   final int userPoints;


   const EndScreen({ Key? key, required this.userPoints}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Scaffold(
         body: Container(
         decoration: BoxDecoration(
             image: DecorationImage(
                 image: AssetImage("assets/arkaplan.jpg"),
                 fit: BoxFit.fitHeight)),
         child: Center(
             child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text("Quiz tamamlandı",style: headerTextStyle(color: Colors.white),),
            Spacer(),
            Text(
              "10 sorudan" +
                userPoints.toString() +
                "tanesini doğru cevapladın",
              textAlign: TextAlign.center,
              style: headerTextStyle(color: Colors.white),
            ),
                     Spacer(),
                     ElevatedButton(
                         onPressed:(){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) =>MyApp()));
                         },
                       child: Text("Ana sayfaya git")),
                      Spacer(),

                   ],
     ),
             ),
         ),
         ),
     );
   }
 }


