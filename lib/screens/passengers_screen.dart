import 'package:flutter/material.dart';

import 'order.dart';

class PassengersScreen extends StatefulWidget {
  @override
  _PassengersScreenState createState() => _PassengersScreenState();
}

final List seats = [
  {
    'id': 0,
    'name': 'Aigerim',
    'seat': '0 A',
    'description': 'верхний',
    'phone': '77079282498',
    'type': '0'
  },
  {
    'id': 1,
    'name': 'Arlan',
    'seat': '0 B',
    'description': 'верхний',
    'phone': '77079282498',
    'type': '0'
  },
  {
    'id': 2,
    'name': 'Assel',
    'seat': '0 A',
    'phone': '77079282498',
    'description': 'верхний',
    'type': '1'
  },
  {
    'id': 3,
    'name': 'Tremirlan',
    'seat': '1',
    'phone': '77079282498',
    'description': 'нижний',
    'type': '1'
  },
  {
    'id': 4,
    'name': 'Aigerim',
    'seat': '1',
    'phone': '77079282498',
    'description': 'верхний',
    'type': '0'
  },
];

class _PassengersScreenState extends State<PassengersScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController mailController = TextEditingController();

  final List notype = [
    {
      'name': 'Нет имени',
      'seat': '0 A',
      'description': 'нижний',
    },
    {
      'name': 'Нет имени',
      'seat': '0 B',
      'description': 'нижний',
    },
    {
      'name': 'Нет имени',
      'seat': '2',
      'description': 'нижний',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.green,
        title: Text(
          'Пассажиры',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 100, child: Text('Имя')),
                Text('Место'),
                Container(
                  width: 100,
                  child: Center(child: Text('Тип')),
                ),
              ],
            ),
            ListView.separated(
              separatorBuilder: (context, index) => Container(
                height: 20,
              ),
              itemCount: seats.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  nameController =
                      TextEditingController(text: seats[index]['name']);
                  phoneController =
                      TextEditingController(text: seats[index]['phone']);
                  mailController = TextEditingController();

                  showBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.7,
                        margin: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Center(child: Text("Информация о пассажире")),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(
                                          0, 1), // changes position of shadow
                                    ),
                                  ]),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                ),
                                controller: nameController,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(
                                          0, 1), // changes position of shadow
                                    ),
                                  ]),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                ),
                                controller: phoneController,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(
                                          0, 1), // changes position of shadow
                                    ),
                                  ]),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                ),
                                initialValue: "Почта",
                                readOnly: true,
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text("Место"),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10)),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 1,
                                                  offset: Offset(0,
                                                      1), // changes position of shadow
                                                ),
                                              ]),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          margin: EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                            ),
                                            initialValue: seats[index]['seat'] +
                                                ' ' +
                                                seats[index]['description'],
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text("Цена"),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10)),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 1,
                                                  offset: Offset(0,
                                                      1), // changes position of shadow
                                                ),
                                              ]),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          margin: EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                            ),
                                            initialValue: '3000',
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FlatButton(
                                  onPressed: () {
                                    var seat = seats
                                        .where((element) =>
                                            element['id'] == seats[index]['id'])
                                        .toList();
                                    setState(() {
                                      seat[0]['name'] = nameController.text;
                                      seat[0]['phone'] = phoneController.text;
                                      seat[0]['Почта'] = mailController.text;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.green,
                                    ),
                                    child: Text(
                                      'Изменить',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                FlatButton(
                                  onPressed: () {},
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.green,
                                    ),
                                    child: Text(
                                      'Отправить чек',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            FlatButton(
                              onPressed: () {
                                showDialog<void>(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title:
                                          Text('Вы хотите отменить покупку?'),
                                      actions: <Widget>[
                                        TextButton(
                                          child: Text('НЕТ'),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                        TextButton(
                                          child: Text('ДА'),
                                          onPressed: () {
                                            setState(() {
                                              seats.removeWhere((element) =>
                                                  element['id'] ==
                                                  seats[index]['id']);
                                            });
                                            Navigator.of(context).pop();
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.green,
                                ),
                                child: Text(
                                  'Отменить подписку',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(width: 100, child: Text(seats[index]['name'])),
                      Column(
                        children: [
                          Text(seats[index]['seat']),
                          Text(seats[index]['description']),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: seats[index]['type'] == '0'
                              ? Colors.grey
                              : Colors.green,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        width: 100,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              seats[index]['type'] == '0'
                                  ? 'OFFLINE'
                                  : seats[index]['type'] == '1'
                                      ? 'ONLINE'
                                      : 'no type',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Свободные места'),
            SizedBox(
              height: 20,
            ),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(width: 100, child: Text(notype[index]['name'])),
                    Column(
                      children: [
                        Text(notype[index]['seat']),
                        Text(notype[index]['description']),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      width: 100,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'no type',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
              itemCount: notype.length,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 20);
              },
            )
          ],
        ),
      ),
    );
  }
}

class Cols extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Бронирование',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 400,
                child: ListView.separated(
                  itemCount: 4,
                  separatorBuilder: (context, index) => Container(
                    width: 10,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    width: 400,
                    height: 400,
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/91-Iveco-Citelis.jpg/500px-91-Iveco-Citelis.jpg',
                      width: 400,
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  'АЛМАТЫ -> НУР-СУЛТАН',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Center(
                child: Text('Темиртау Караганды'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Осталось Мест : 42'), Text('Всего мест: 51')],
              ),
              Container(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Отправление'), Text('Прибытие')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.calendar_today),
                      Text('9.12.2019'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.calendar_today),
                      Text('10.12.2019'),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.watch_later),
                      Text('14:43'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.watch_later),
                      Text('14:43'),
                    ],
                  )
                ],
              ),
              Text('Длительность пути 24 часов'),
              Text('Администратор The Owner'),
              Text('Телефон: +7 (454) 253 9999'),
              Text('Телефон: +7 (342) 532 6436'),
              Text('Марка Mercedes'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Год выпуска 2012'),
                  Text('Гоc номер 123AB13'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Год выпуска 2012'),
                  Text('Гоc номер 123AB13'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    margin: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '32',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '3000 Т',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                        FittedBox(
                          child: Container(
                            height: 10,
                            width: 70,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    margin: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '33',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '3000 Т',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                        FittedBox(
                          child: Container(
                            height: 10,
                            width: 70,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    margin: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "3000",
                          style: TextStyle(
                            color: Colors.transparent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    margin: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '34',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '3000 Т',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                        FittedBox(
                          child: Container(
                            height: 10,
                            width: 70,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    margin: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '35',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '3000 Т',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                        FittedBox(
                          child: Container(
                            height: 10,
                            width: 70,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    margin: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '35',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '3000 Т',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                        FittedBox(
                          child: Container(
                            height: 10,
                            width: 70,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Order(),
                          ));
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 10),
                      margin: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        border: Border.all(
                          width: 1,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '36',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            '3000 Т',
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                          FittedBox(
                            child: Container(
                              height: 10,
                              width: 70,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    margin: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "3000",
                          style: TextStyle(
                            color: Colors.transparent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    margin: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.orange[200],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '37',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                        FittedBox(
                          child: Container(
                            height: 10,
                            width: 70,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    margin: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '38',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '3000 Т',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                        FittedBox(
                          child: Container(
                            height: 10,
                            width: 70,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
