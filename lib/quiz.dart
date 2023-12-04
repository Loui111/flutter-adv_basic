import 'package:adv_basic/questions_screen.dart';
import 'package:adv_basic/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  
  @override
  State<Quiz> createState(){  //기존에 만들었던 코드는 전부 _QuizState로 보내고, Quiz클래스는 State만 남네 
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget activeScreen = const StartScreen();   //변수에 widget을 저장한다. 이게 쌉가능함.
                                                //처음은 StartScreen으로 시작.

  void switchScreen() {                         //먼가 이벤트 있을때 switchScreen이 활성되면서 activeScreen에 QuestionScreen으로 대체됨.
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }
  
  @override
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
              Color.fromARGB(255, 60, 13, 141), 
              Color.fromARGB(255, 190, 168, 229),
              ],
              begin: Alignment.topLeft, 
              end: Alignment.bottomRight
            ),
          ),
          // child: const StartScreen(),
          child: activeScreen, //child는 widget만 부를수 있음. 그래서 이걸 activeScreen으로 설정하는거. 
        ),
      ),
    );
  }
}