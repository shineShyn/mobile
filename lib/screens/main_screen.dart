import 'package:busapp/screens/bus_screen.dart';
import 'package:flutter/material.dart';

import 'search.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget _currentWidget;
  Widget _appBarTitle;
  @override
  void initState() {
    super.initState();
    _appBarTitle = Text(
      'Выберите рейс',
      style: TextStyle(color: Colors.white),
    );
    _currentWidget = BusScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _appBarTitle,
        backgroundColor: Colors.green,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      body: _currentWidget,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Column(
              children: [
                Container(height: 40),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Test company',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(height: 40),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Aty zhoni',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                Container(height: 20),
              ],
            ),
            Container(
              height: 1,
              width: 1000,
              color: Colors.black,
            ),
            ListTile(
              title: Text('Продажа билетов'),
              leading: Icon(Icons.flag),
              onTap: () {
                setState(() {
                  _currentWidget = Search();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Список администраторов'),
              leading: Icon(Icons.flag),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Автобусы'),
              leading: Icon(Icons.flag),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Статистика'),
              leading: Icon(Icons.flag),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Пассажиры'),
              leading: Icon(Icons.flag),
              onTap: () {
                _currentWidget = BusScreen();
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Расписание'),
              leading: Icon(Icons.flag),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('История'),
              leading: Icon(Icons.flag),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
