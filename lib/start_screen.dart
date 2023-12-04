import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{

  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // const Opacity(opacity: 0.2),    //투명도 설정 (이미지.) but 이거 쓰는거 별로 안좋댄다.
          Image.asset(
              'assets/images/aeong.png',
              width: 300,
              // color: Colors.red, 
             ),   //이거 쓸려면 pubspec.yml 에서 asset폴더를 등록 해야함. assets: 
             const SizedBox(height: 80,), //wideget들 사이에 gap을 만드는 방법중 하나. 
            const Text('Learn Flutter the fun way!', style: TextStyle(
              color: Color.fromARGB(255, 240, 214, 214), 
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 30), 
          OutlinedButton.icon( 
            onPressed: () {


              
            }, 
            style: OutlinedButton.styleFrom(    //outlineButton은 style을 줄때 .styleFrom 쓰는게 더 좋음.
              foregroundColor: Colors.white
            ), 
            //.icon을 쓰면 label child가 아닌 label을 쓰는게 더 좋음. 
            icon: const Icon(Icons.arrow_right_alt),  //icon이라는 이미 만들어진거 갖다 쓸수 있음
            label: const Text('Start Quiz'))

        ],
      ),
    );
  }
}
