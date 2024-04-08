import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "Week2"),
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
            appBar:
            AppBar(
                title: Text(
                  'GDSC 모바일 스터디',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(1.0),
                  child: Divider(
                    height: 2.0,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                )
            ),
            body:
            Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "과제",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.withOpacity(0.5), width: 2.0),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "오늘의 과제",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Image.asset(
                                  "assets/images/book.png",
                                  width: 60,
                                  height: 60,
                                  fit: BoxFit.fill
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 150,
                          margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.withOpacity(0.5), width: 2.0),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "수행한 과제",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Image.asset(
                                  "assets/images/Collections_Bookmark.png",
                                  width: 60,
                                  height: 60,
                                  fit: BoxFit.fill
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(
                        "나의 수행도",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.withOpacity(0.5), width: 2.0),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: TableCalendar(
                          firstDay: DateTime.utc(2010, 10, 16),
                          lastDay: DateTime.utc(2030, 3, 14),
                          focusedDay: DateTime.now(),
                        )
                    ),
                    Text(
                        "나의 다짐",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    Text(
                        "플러터 짱이 되자.",
                        style: TextStyle(
                            fontSize: 15
                        )
                    ),
                  ],
                )
            )
        )
    );
  }
}
