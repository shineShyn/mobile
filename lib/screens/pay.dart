import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'orders.dart';

class Pay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Оплата',
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
              children: [
                Icon(
                  Icons.card_giftcard,
                  size: 50,
                ),
                Text('   '),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(labelText: 'Номер карты'),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.face,
                  size: 50,
                ),
                Text('   '),
                Expanded(
                  child: TextField(
                    decoration:
                        InputDecoration(labelText: 'Имя держателя карты'),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        size: 50,
                      ),
                      Text('   '),
                      Expanded(
                        child: TextField(
                          decoration:
                              InputDecoration(labelText: 'Срок действия'),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Icon(
                        Icons.shield,
                        size: 50,
                      ),
                      Text('   '),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(labelText: 'CVC2/CVV2'),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 50,
            ),
            Center(
              child: FlatButton(
                minWidth: 500,
                color: Colors.green,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => CupertinoAlertDialog(
                            title: new Text("Оплачено"),
                            content: new Text(
                                "Чтобы просмотреть покупку переходите в 'История заказов'."),
                            actions: <Widget>[
                              CupertinoDialogAction(
                                isDefaultAction: true,
                                child: Text('OK'),
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Orders()));
                                },
                              ),
                            ],
                          ));
                },
                child: Text(
                  'Оплатить 3000 Т',
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
