import 'package:flutter/material.dart';

// stless 단축키로 생성 가능
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 폰 화면 바깥을 벗어 나는 것을 막아주는 위젯, 상하좌우 개별적으로 설정 가능
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.black,
          // 앱을 실행하고 있는 기기의 사이즈를 가져올 수 있는 메서드
          // height: MediaQuery.of(context).size.height,
          child: Column(
            // MainAxisAlignment - 주축 정렬 (Row, Column 클래스에서 사용)
            // spaceBetween - 위젯과 위젯의 사이가 동일하게 배치된다.
            // spaceEvenly - 위젯을 같은 간격으로 배치하지만 끝과 끝에도
            //               위젯이 아닌 빈 간격으로 시작한다.
            // spaceAround - spaceEvenly + 끝과 끝의 간격은 1/2
            mainAxisAlignment: MainAxisAlignment.start,
            // CrossAxisAlignment - 반대축 정렬
            // stretch - 최대한으로 늘린다.
            crossAxisAlignment: CrossAxisAlignment.start,
            // MainAxisSize - 주축 크기
            // max - 최대
            // min - 최소
            mainAxisSize: MainAxisSize.max,
            children: [
              // Expanded / Flexible - 무조건 Column, Row 안에서 사용 해야 함!
              // Expanded를 사용하면 사용한 위젯들끼리 공간을 나눠 갖는다. flex로 비율 조정 가능
              // Flexible은 children 공간 중 Flexible을 사용한 자식에 해당하는 공간만큼 차지하되, 자신의 크기만큼만 차지하고
              // 나머지 부분은 버린다. (버린 부분은 맨 아래에 표시)
              // 마찬가지로 flex로 비율 조정 가능
              Flexible(
                child: Container(
                  color: Colors.red,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}