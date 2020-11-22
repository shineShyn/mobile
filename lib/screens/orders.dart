import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Детали заказа',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('АЛМАТЫ -> НУРСУЛТАН'),
                    Container(height: 20),
                    Row(
                      children: [
                        Text(
                          'Дата заказа:  ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text('6.12.2019')
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Время заказа:  ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text('15:57')
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Сумма:  ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text('3000 Т')
                      ],
                    ),
                    Container(height: 20),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Место:  ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text('36')
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Пассажир:  ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text('Гость')
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Тариф:  ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text('3000 Т')
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
