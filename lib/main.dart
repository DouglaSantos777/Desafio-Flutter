import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 36,
            color: Colors.white,
          ),
          bodyMedium: TextStyle(
            fontFamily: 'SourceSansPro',
            fontSize: 10,
            color: Colors.white,
          ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/bern.png'),
              radius: 80,
            ),
            SizedBox(height: 20),
            Text(
              'Douglas Santos',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              'FLUTTER DEVELOPER',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontFamily: 'SourceSansPro',
                    fontSize: 25,
                    fontWeight: FontWeight.w100,
                  ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width * 0.99,
              child: Divider(
                color: Colors.white,
                thickness: 2,
                indent: (MediaQuery.of(context).size.width * 0.95 - 150) / 2,
                endIndent: (MediaQuery.of(context).size.width * 0.95 - 150) / 2,
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16), 
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start, 
                  children: [
                    Icon(Icons.phone, color: Colors.teal),
                    SizedBox(width: 10),
                    Expanded(
                      child: Center(
                        child: Text(
                          '+55 86 4002-8922',
                          style: TextStyle(
                            color: Colors.teal,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16), 
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start, 
                  children: [
                    Icon(Icons.email, color: Colors.teal),
                    SizedBox(width: 10),
                    Expanded(
                      child: Center(
                        child: Text(
                          'finger@gmail.com',
                          style: TextStyle(
                            color: Colors.teal,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
