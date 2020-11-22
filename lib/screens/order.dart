import 'package:flutter/material.dart';

import 'pay.dart';

class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Пассажиры',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Место: ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "36",
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Тариф',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text('3000')
                  ],
                ),
                Container()
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.account_box,
                  size: 50,
                ),
                Text('   '),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(labelText: 'ФИО*'),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.phone,
                  size: 50,
                ),
                Text('   '),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(labelText: 'Номер телефона*'),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  size: 50,
                ),
                Text('   '),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(labelText: 'Email*'),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.settings_overscan_outlined,
                  size: 50,
                ),
                Text('   '),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(labelText: 'ИИН'),
                  ),
                )
              ],
            ),
            Container(
              height: 50,
            ),
            Text(
              'Стоймость',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Text(
                  'Билеты:  ',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  '3000 T',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Сервисный сбор:  ',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  '0 T',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Итого:  ',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  '3000 T',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.green),
                ),
              ],
            ),
            Center(
              child: FlatButton(
                minWidth: 500,
                color: Colors.green,
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Pay()));
                },
                child: Text(
                  'Далее',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
