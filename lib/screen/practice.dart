import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 폰 화면 바깥을 벗어 나는 것을 막아주는 위젯, 상하좌우 개별적으로 설정 가능
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.black,
          // 앱을 실행하고 있는 기기의 사이즈를 가져올 수 있는 메서드
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.red,
                  ),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.orange,
                  ),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.green,
                  ),
                ],
              ),
              Container(
                width: 50.0,
                height: 50.0,
                color: Colors.orange,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.red,
                  ),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.orange,
                  ),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.green,
                  ),
                ],
              ),
              Container(
                width: 50.0,
                height: 50.0,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
