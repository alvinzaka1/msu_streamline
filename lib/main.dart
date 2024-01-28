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
        title: const Text('Michigan State University Widget'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Your existing widgets go here
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
  int counter1 = Random().nextInt(100); // Random number between 0 and 99
  int counter2 = Random().nextInt(100);
  int counter3 = Random().nextInt(100);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 32, 77, 34),
        title: Text('Page 3'),
      ),
      body: ListView(
        children: <Widget>[
          buildSection('IM WEST', counter1, () {
            setState(() {
              counter1 += Random().nextBool() ? 2 : -2;
            });
          }),
          const Image(image: AssetImage('images/imwest.jpg'),),
          buildSection('IM EAST', counter2, () {
            setState(() {
              counter2 += Random().nextBool() ? 2 : -2;
            });
          }),
          buildSection('IM CIRCLE', counter3, () {
            setState(() {
              counter3 += Random().nextBool() ? 2 : -2;
            });
          }),
        ],
      ),
    );
  }

  Widget buildSection(String title, int counter, VoidCallback onUpdate) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text('Counter: $counter'),
        trailing: ElevatedButton(
          child: Text('Update'),
          onPressed: onUpdate,
        ),
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
        title: Text('Page 4'),
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
        trailing: Image(image: AssetImage(route))
      ),
    );
  }
}