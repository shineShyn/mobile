import 'package:busapp/screens/passengers_screen.dart';
import 'package:busapp/screens/rayse.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.5,
              child: Image.network(
                'https://www.sustainable-bus.com/wp-content/uploads/2019/12/scania-bus4.jpg',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.center,
              ),
            ),
            Center(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Center(
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Row(
                            children: [
                              Flexible(child: TextFormField()),
                              Flexible(child: TextFormField()),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            FlatButton(
                              child: Container(
                                color: Colors.yellow,
                                width: 150,
                                padding: EdgeInsets.all(15),
                                margin: EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    Icon(Icons.calendar_today),
                                    Text('8.12.2019')
                                  ],
                                ),
                              ),
                              onPressed: () {},
                            ),
                            FlatButton(
                              child: Container(
                                width: 150,
                                color: Colors.green,
                                padding: EdgeInsets.all(15),
                                margin: EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    Text(
                                      'Поиск',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              onPressed: () {
                                print('hi');
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Cols(),
                                  ),
                                );
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => Rayse(),
                                //   ),
                                // );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
