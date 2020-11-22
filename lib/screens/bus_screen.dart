import 'package:busapp/screens/passengers_screen.dart';
import 'package:flutter/material.dart';

class BusScreen extends StatelessWidget {
  final List array = [
    {
      'day': 'Сегодня',
      'image': 'assets/bu.jpg',
      'direction': 'Сарыагаш - Алматы',
      'date': '07.02.2020 Fri',
      'time': '10:00',
      'name': 'YUTONG',
      'seats': 32,
      'legal': 'KZ 888',
      'legal2': 'KN02',
      'date2': '08.02.2020 Fri',
      'time2': '00:00',
    },
    {
      'day': 'Сегодня',
      'image': 'assets/bu.jpg',
      'direction': 'Сарыагаш - Алматы',
      'date': '07.02.2020 Fri',
      'time': '10:00',
      'name': 'YUTONG',
      'seats': 32,
      'legal': 'KZ 888',
      'legal2': 'KN02',
      'date2': '08.02.2020 Fri',
      'time2': '00:00',
    },
    {
      'day': 'Сегодня',
      'image': 'assets/bu.jpg',
      'direction': 'Сарыагаш - Алматы',
      'date': '07.02.2020 Fri',
      'time': '10:00',
      'name': 'YUTONG',
      'seats': 32,
      'legal': 'KZ 888',
      'legal2': 'KN02',
      'date2': '08.02.2020 Fri',
      'time2': '00:00',
    },
    {
      'day': 'Сегодня',
      'image': 'assets/bu.jpg',
      'direction': 'Сарыагаш - Алматы',
      'date': '07.02.2020 Fri',
      'time': '10:00',
      'name': 'YUTONG',
      'seats': 32,
      'legal': 'KZ 888',
      'legal2': 'KN02',
      'date2': '08.02.2020 Fri',
      'time2': '00:00',
    },
    {
      'day': 'Сегодня',
      'image': 'assets/bu.jpg',
      'direction': 'Сарыагаш - Алматы',
      'date': '07.02.2020 Fri',
      'time': '10:00',
      'name': 'YUTONG',
      'seats': 32,
      'legal': 'KZ 888',
      'legal2': 'KN02',
      'date2': '08.02.2020 Fri',
      'time2': '00:00',
    },
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: array.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  array[index]['day'],
                  style: TextStyle(
                    color: Colors.green[800],
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PassengersScreen(),
                      ),
                    );
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: size.width * 0.3,
                                  child: Image.asset(
                                    array[index]['image'],
                                  ),
                                ),
                                Container(
                                  width: size.width * 0.3,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Text(
                                          array[index]['name'],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      array[index]['legal'],
                                    ),
                                    Text('      '),
                                    Text(
                                      array[index]['seats'].toString() +
                                          ' мест',
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      array[index]['legal2'],
                                    ),
                                    Text('      '),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      array[index]['direction'],
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Отправление',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Дата - ' + array[index]['date'],
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Время - ' + array[index]['time'],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Прибытие',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Дата - ' + array[index]['date2'],
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Время - ' + array[index]['time2'],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
