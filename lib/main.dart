import 'package:flutter/material.dart';
import 'package:quizuygulamasii/layout/quizSayfasi.dart';
import 'package:quizuygulamasii/layout/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '                   ANASAYFA'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body :Container(
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
                Spacer(),
                Text("Quiz uygulamasına hoş geldiniz",style: headerTextStyle(color: Colors.white),),
                Spacer(),
                ElevatedButton(
                    onPressed:(){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>QuizPage()));
                    },
                    child: Text("Quizi başlat")),
                Spacer(),

              ],
            ),
          ),
        ),
      ),
    );



  }
}
