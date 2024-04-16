import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "Week4"),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomPaint(
                    size: Size(214, 100),
                    painter: MyFirstPainter(),
                  ),
                  SizedBox(height: 30),
                  CustomPaint(
                    size: Size(214, 100),
                    painter: MySecondPainter(),
                  ),
                  SizedBox(height: 30),
                  CustomPaint(
                    size: Size(214, 100),
                    painter: MyThirdPainter(),
                  ),
                ],
              ),
            )
        )
    );
  }
}

class MyFirstPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paintRect = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    final Paint paintLeftCircle = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final Paint paintRightCircle = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    final double width = size.width;
    final double height = size.height;

    canvas.drawRect(Rect.fromLTRB(0, 0, width, height), paintRect); //직사각형
    canvas.drawCircle(Offset(0.0, 50.0), 50, paintLeftCircle); //왼쪽 원
    canvas.drawCircle(Offset(214.0, 50.0), 50, paintRightCircle); //오른쪽 원
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class MySecondPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paintRect = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    final Paint paintCircle = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final double width = size.width;
    final double height = size.height;

    canvas.drawRect(Rect.fromLTRB(0, 0, width, height), paintRect); //직사각형
    canvas.drawCircle(Offset(0.0, 50.0), 50, paintCircle); //왼쪽 원
    canvas.drawCircle(Offset(214.0, 50.0), 50, paintCircle); //오른쪽 원
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class MyThirdPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    final double width = size.width;
    final double height = size.height;

    canvas.drawRect(Rect.fromLTRB(0, 0, width, height), paint); //직사각형
    canvas.drawCircle(Offset(0.0, 50.0), 50, paint); //왼쪽 원
    canvas.drawCircle(Offset(214.0, 50.0), 50, paint); //오른쪽 원
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
