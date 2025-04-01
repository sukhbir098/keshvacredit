import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  _DashboardAppState createState() => _DashboardAppState();
}

class _DashboardAppState extends State<Dashboard> {
  ThemeMode _themeMode = ThemeMode.system;

  void toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      home: DashboardScreen(toggleTheme: toggleTheme),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  final VoidCallback toggleTheme;
  const DashboardScreen({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: isDarkMode ? Colors.black : Colors.white,
        elevation: 0,
        title: Text("Dashboard", style: TextStyle(color: isDarkMode ? Colors.white : Colors.black)),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode, color: isDarkMode ? Colors.white : Colors.black),
            onPressed: toggleTheme,
          ),
          IconButton(
            icon: Icon(Icons.search, color: isDarkMode ? Colors.white : Colors.black),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Menu button clicked!")));
            },
          ),
          const SizedBox(width: 10),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: const Text("Menu", style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(leading: const Icon(Icons.home), title: const Text("Home"), onTap: () {}),
            ListTile(leading: const Icon(Icons.settings), title: const Text("Settings"), onTap: () {}),
          ],
        ),
      ),
      body: SingleChildScrollView( // Wrap everything in a SingleChildScrollView
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 130,
                    height: 50,
                    child: Card(
                      child: Center(child: Text("Hello")),
                    ),
                  ),
                  Container(
                    width: 130,
                    height: 50,
                    child: Card(
                      child: Center(child: Text("Hello")),
                    ),
                  ),
                  Container(
                    width: 130,
                    height: 50,
                    child: Card(
                      child: Center(child: Text("Hello")),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(5),
              width: double.infinity,
              height: 100,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Card(
                        child: Container(
                          width: 300,
                          height: 80,
                          child: Center(child: Text("Card 1")),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Card(
                        child: Container(
                          width: 300,
                          height: 80,
                          child: Center(child: Text("Card 2")),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Card(
                        child: Container(
                          width: 300,
                          height: 80,
                          child: Center(child: Text("Card 3")),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Card(
                        child: Container(
                          width: 300,
                          height: 80,
                          child: Center(child: Text("Card 4")),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.centerLeft,
              child: Text(
                "Apply for a Product",
                style: TextStyle(),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: Container(
                      width: 80,
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.home, size: 30),
                          SizedBox(height: 10),
                          Text("Home", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Card(
                    child: Container(
                      width: 80,
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.shopping_cart, size: 30),
                          SizedBox(height: 10),
                          Text("Cart", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Card(
                    child: Container(
                      width: 80,
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.notifications, size: 30),
                          SizedBox(height: 10),
                          Text("Notifi", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Card(
                    child: Container(
                      width: 80,
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.account_circle, size: 30),
                          SizedBox(height: 10),
                          Text("Profile", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: Container(
                      width: 80,
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.home, size: 30),
                          SizedBox(height: 10),
                          Text("Home", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Card(
                    child: Container(
                      width: 80,
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.shopping_cart, size: 30),
                          SizedBox(height: 10),
                          Text("Cart", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Card(
                    child: Container(
                      width: 80,
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.notifications, size: 30),
                          SizedBox(height: 10),
                          Text("Notifi", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Card(
                    child: Container(
                      width: 80,
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.account_circle, size: 30),
                          SizedBox(height: 10),
                          Text("Profile", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(5),
              width: double.infinity,
              height: 180,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Card(
                        child: Container(
                          width: 300,
                          height: 200,
                          child: Center(child: Text("Card 1")),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Card(
                        child: Container(
                          width: 300,
                          height: 200,
                          child: Center(child: Text("Card 2")),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Card(
                        child: Container(
                          width: 300,
                          height: 200,
                          child: Center(child: Text("Card 3")),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Card(
                        child: Container(
                          width: 300,
                          height: 200,
                          child: Center(child: Text("Card 4")),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center, // Set to center
                children: [
                  Text(
                    "KESHVACREDIT",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,  // Align text to the center
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Secure ,Simple, Smart",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,  // Align text to the center
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Your made in india Platform",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,  // Align text to the center
                  ),
                  Divider(),
                ],
              ),
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
