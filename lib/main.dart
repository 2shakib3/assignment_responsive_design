import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveHomePage(),
    );
  }
}

class ResponsiveHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var isMobile = screenSize.width < 600;
    var isTablet = screenSize.width >= 600 && screenSize.width < 1024;
    var isDesktop = screenSize.width >= 1024;

    return Scaffold(
      appBar: AppBar(
        title: Text('FLUTTER WEB'),
        actions: isDesktop
            ? [
          TextButton(onPressed: () {}, child: Text('Home')),
          TextButton(onPressed: () {}, child: Text('About')),
          TextButton(onPressed: () {}, child: Text('Contact')),
        ]
            : null,
      ),
      drawer: isMobile
          ? Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'FLUTTER WEB',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              title: Text('About'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Contact'),
              onTap: () {},
            ),
          ],
        ),
      )
          : null,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Container(
            width: isDesktop
                ? 600
                : isTablet
                ? 400
                : double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'FLUTTER WEB.\nTHE BASICS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isDesktop
                        ? 36
                        : isTablet
                        ? 28
                        : 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'I write codes to talk to all your devices using Flutter Web.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isDesktop
                        ? 18
                        : isTablet
                        ? 16
                        : 14,
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: isDesktop || isTablet ? 40 : 20,
                      vertical: 16,
                    ),
                    child: Text('Join Course'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
