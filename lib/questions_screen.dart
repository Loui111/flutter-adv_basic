import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});    //key args를 받을수 있는 생성자가 있어야 한다 (?먼 소리일까)

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  } //Stateful위젯이면 State형태로 만드는게 디폴트임.

}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(Object context) {
    return const Text('Question Text');
  }
}
