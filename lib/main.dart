import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Michigan State University'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Transform.scale(
                scale: 2,
                child: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                      ),
                    ],
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  
                  width: 150,
                  height: 50,
                    child: const Column(
                      children: [
                        Text('Welcome to MSU Streamline!', textAlign: TextAlign.center,),
                      ],)
              ),
              ),
              
              Transform.scale(
                scale: 2,
                child: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                      ),
                    ],
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  
                  width: 150,
                  height: 50,
                    child: const Column(
                      children: [
                        Text(
                          'Click the button in the top left corner to get started!',
                          style: TextStyle(fontSize: 11),
                          textAlign: TextAlign.center,
                        ),
                      ],)
              ),
              ),
              Transform.scale(
                scale: 2,
                child: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                      ),
                    ],
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  
                  width: 150,
                  height: 150,
                    child: const Column(
                      children: [
                        Image (image: AssetImage('images/sparty.jpg'),),
                      ],)
              ),
              ),
            ],
          ),
        ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const SizedBox(
              height: 128,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                margin: EdgeInsets.all(0),
                child: Text("MSU Resources"),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.location_city),
              title: const Text("Maps"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page4()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.price_change),
              title: const Text("Sparty's"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.sports_basketball),
              title: const Text("Recreation"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page3()),
                );
              },
            ),
            // Add more ListTiles as needed
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int counter1 = 12;
  int counter2 = 150;
  int counter3 = 300;
  int decrementAmount = 1;
  bool isButton1Clicked = false;
  bool isButton2Clicked = false;
  bool isButton3Clicked = false;
  final decrementController = TextEditingController();

  @override
  void dispose() {
    decrementController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text('Combo X Change'),
      ),
      body: Stack(
        children: [
          const Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 8.0, right: 8.0),
              child: Text('Combo X Change',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (!isButton1Clicked && !isButton2Clicked && !isButton3Clicked)
                  ...[
                    ElevatedButton(
                      child: Text('Silver Combo: $counter1'),
                      onPressed: () {
                        setState(() {
                          isButton1Clicked = true;
                        });
                      },
                    ),
                    ElevatedButton(
                      child: Text('Gold Combo: $counter2'),
                      onPressed: () {
                        setState(() {
                          isButton2Clicked = true;
                        });
                      },
                    ),
                    ElevatedButton(
                      child: Text('Platinum Combo: $counter3'),
                      onPressed: () {
                        setState(() {
                          isButton3Clicked = true;
                        });
                      },
                    ),
                  ],
                if (isButton1Clicked)
                  ...[
                    Text(
                      'Combos : $counter1',
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    ElevatedButton(
                      child: Text('Log Combo'),
                      onPressed: () {
                        setState(() {
                          if (counter1 > 0)
                          [
                          counter1--];
                        });
                      },
                    ),
                  ],
                if (isButton2Clicked)
                  ...[
                    Text(
                      'Spartan Cash: $counter2',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    TextField(
                      controller: decrementController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Spartan Cash Used',
                      ),
                      onChanged: (value) {
                        decrementAmount = int.parse(value);
                      },
                    ),
                    ElevatedButton(
                      child: Text('Log Amount Used'),
                      onPressed: () {
                        setState(() {
                          counter2 -= decrementAmount;
                        });
                      },
                    ),
                    Text(
                      'Combos: $counter1',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    ElevatedButton(
                      child: Text('Log Combos'),
                      onPressed: () {
                        setState(() {
                          if (counter1 > 0)
                          [
                          counter1--];
                        });
                      },
                    ),
                  ],
                if (isButton3Clicked)
                  ...[
                    Text(
                      'Counter: $counter3',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    TextField(
                      controller: decrementController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Decrement Amount',
                      ),
                      onChanged: (value) {
                        decrementAmount = int.parse(value);
                      },
                    ),
                    ElevatedButton(
                      child: Text('Decrement Counter'),
                      onPressed: () {
                        setState(() {
                          counter3 -= decrementAmount;
                        });
                      },
                    ),
                    Text(
                      'Counter: $counter1',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    ElevatedButton(
                      child: Text('Decrement Counter'),
                      onPressed: () {
                        setState(() {
                          if (counter1 > 0)
                          [
                          counter1--];
                        });
                      },
                    ),
                  ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  List<int> data = [122, 101, 81, 121, 159, 190, 197, 178, 236, 210, 203, 175, 164, 125, 88, 75, 11, 0];
  List<int> data2 = [20, 63, 31, 63, 55, 66, 35, 75, 41, 67, 142, 106, 70, 59, 88, 61, 34, 28];
  List<int> data3 = [0, 0, 8, 78, 12, 24, 22, 28, 41, 47, 24, 16, 0, 0, 0, 0, 0, 0];
  int index = 0;
  int index2 = 0;
  int index3 = 0;
  int counter1=0;
  int counter2=0;
  int counter3=0;

  @override
  void initState() {
    super.initState();
    counter1 = data[index];
    counter2 = data2[index2];
    counter3 = data3[index3];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 32, 77, 34),
        title: Text('IM GYM HOURLY UPDATE 01/26'),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text(' IM WEST (Click to Update Hourly)'),
            trailing: Text('$counter1'),
            onTap: () {
              setState(() {
                index = (index + 1) % data.length;
                counter1 = data[index];
              });
            },
          ),
          ListTile(
            title: Text('IM EAST (Click to Update Hourly)'),
            trailing: Text('$counter2'),
            onTap: () {
              setState(() {
                index2 = (index2 + 1) % data2.length;
                counter2 = data2[index2];
              });
            },
          ),
          ListTile(
            title: Text('IM CIRCLE (Click to Update Hourly)'),
            trailing: Text('$counter3'),
            onTap: () {
              setState(() {
                index3 = (index3 + 1) % data3.length;
                counter3 = data3[index3];
              });
            },
          ),
        ],
      ),
    );
  }
}

class Page4 extends StatefulWidget {
  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bus Route'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildPicture('Bus 30', 'images/bus30.jpg'),
            buildPicture('Bus 31', 'images/bus31.jpg'),
            buildPicture('Bus 33', 'images/bus33.jpg'),
          ],
        ),
      ),
    );
  }
  Widget buildPicture(String title, String route) {
    return Card(
      child: ListTile(
        title: Text(title),
        trailing: GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: Image(image: AssetImage(route)),
                  actions: <Widget>[
                    TextButton(
                      child: const Text('Close'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
          child: Image(image: AssetImage(route)),
        ),
      ),
    );

  }
}