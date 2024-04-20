import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Weather Forecast",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: _builtBody(),
      ),
    );
  }
}
Widget _builtBody() {
  return SingleChildScrollView(
    child: Container(
      color: Colors.blue[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: 20),
          _searchInput(),
          SizedBox(height: 20),
          _weatherDes(),
          SizedBox(height: 20),
          Center(
            child: _temperature(),
          ),
          SizedBox(height: 20),
          Center(
            child: _weatherIcon(),
          ),
          SizedBox(height: 30),
          _footerName(),
          SizedBox(height: 30),
        ],
      ),
    ),
  );
}

Row _searchInput() {
  return Row(
    children: <Widget>[
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Enter City Name',
              hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              prefixIcon: Icon(Icons.search, color: Colors.blue),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

Column _weatherDes() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        'Pushkin 154, Taraz',
        style: TextStyle(
          fontSize: 40,
          color: Colors.black,
          fontWeight: FontWeight.normal,
        ),
      ),
      Divider(),
      Text(
        'Friday, April 19, 2024',
        style: TextStyle(
          fontSize: 20,
          color: Colors.blue,
        ),
      ),
    ],
  );
}

Row _temperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(Icons.sunny, size: 90, color: Colors.yellow), // Icon
      SizedBox(width: 15),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '14°F',
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
          Text(
            'Light Snow', // Text below
            style: TextStyle(
              fontSize: 35,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    ],
  );
}
Row _weatherIcon() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Column(
        children: <Widget>[
          Icon(Icons.ac_unit, size: 60, color: Colors.blue), // Sunny icon
          Text('5',  style: TextStyle(fontSize: 27, color: Colors.white),), // First text
          Text('km/hr', style: TextStyle(fontSize: 25, color: Colors.blue)), // Second text
        ],
      ),
      Column(
        children: <Widget>[
          Icon(Icons.ac_unit, size: 60, color: Colors.blue), // Cloud icon
          Text('3', style: TextStyle(fontSize: 27, color: Colors.white)), // First text
          Text('%',style: TextStyle(fontSize: 25, color: Colors.blue)), // Second text
        ],
      ),
      Column(
        children: <Widget>[
          Icon(Icons.ac_unit, size: 60, color: Colors.blue), // Snowflake icon
          Text('20', style: TextStyle(fontSize: 27, color: Colors.white)), // First text
          Text('%', style: TextStyle(fontSize: 25, color: Colors.blue)), // Second text
        ],
      ),
    ],
  );
}
Column _footerName() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text(
        '7 DAY WEATHER FORECAST',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 28,
          color: Colors.white,
        ),
      ),
      SizedBox(height: 10),

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Friday',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: <Widget>[
                      Text(
                        '6°F',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Icon(Icons.sunny, color: Colors.yellow),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 20),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Saturday',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: <Widget>[
                      Text(
                        '5°F',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Icon(Icons.cloud, color: Colors.grey),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

