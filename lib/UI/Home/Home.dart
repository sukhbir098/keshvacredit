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
              padding: EdgeInsets.all(4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // First Container
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3, // Adjust width based on screen size
                    height: 50,
                    child: Card(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.blue[900]
                          : Colors.blue,
                      child: Center(child: Text("Hello")),
                    ),
                  ),
                  // Second Container
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3, // Adjust width based on screen size
                    height: 50,
                    child: Card(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.blue[900]
                          : Colors.blue,
                      child: Center(child: Text("Hello")),
                    ),
                  ),
                  // Third Container
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3, // Adjust width based on screen size
                    height: 50,
                    child: Card(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.blue[900]
                          : Colors.blue,
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
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.red[300]
                            : Colors.blue,
                        child: Container(
                          width: 300,
                          height: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Padding(
                                padding: EdgeInsets.all(8), // बाएं साइड से padding देने के लिए
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Padding(padding: EdgeInsets.all(5)),
                                    Text(
                                      "Sachin ",
                                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "hello sachin ",
                                      style: TextStyle(fontSize: 14, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),

                              Image.asset(
                                'assets/otp.png',
                                width: 50,
                                height: 50,
                              ),
                            ],
                          ),
                        ),

                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Card(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.red[300]
                            : Colors.blue,
                        child: Container(
                          width: 300,
                          height: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Padding(
                                padding: EdgeInsets.all(8), // बाएं साइड से padding देने के लिए
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Padding(padding: EdgeInsets.all(5)),
                                    Text(
                                      "Sachin ",
                                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "hello sachin ",
                                      style: TextStyle(fontSize: 14, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),

                              Image.asset(
                                'assets/otp.png',
                                width: 50,
                                height: 50,
                              ),
                            ],
                          ),
                        ),

                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Card(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.red[300]
                            : Colors.blue,
                        child: Container(
                          width: 300,
                          height: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Padding(
                                padding: EdgeInsets.all(8), // बाएं साइड से padding देने के लिए
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Padding(padding: EdgeInsets.all(5)),
                                    Text(
                                      "Sachin ",
                                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "hello sachin ",
                                      style: TextStyle(fontSize: 14, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),

                              Image.asset(
                                'assets/otp.png',
                                width: 50,
                                height: 50,
                              ),
                            ],
                          ),
                        ),

                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Card(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.red[300]
                            : Colors.blue,
                        child: Container(
                          width: 300,
                          height: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Padding(
                                padding: EdgeInsets.all(8), // बाएं साइड से padding देने के लिए
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Padding(padding: EdgeInsets.all(5)),
                                    Text(
                                      "Sachin ",
                                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "hello sachin ",
                                      style: TextStyle(fontSize: 14, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),

                              Image.asset(
                                'assets/otp.png',
                                width: 50,
                                height: 50,
                              ),
                            ],
                          ),
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
                  // First Card
                  Card(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.blue[900]
                        : Colors.blue,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.18, // Adjust width based on screen size
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
                  // Second Card
                  Card(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.blue[900]
                        : Colors.blue,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.18, // Adjust width based on screen size
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
                  // Third Card
                  Card(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.blue[900]
                        : Colors.blue,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.18, // Adjust width based on screen size
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
                  // Fourth Card
                  Card(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.blue[900]
                        : Colors.blue,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.18, // Adjust width based on screen size
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
                  // First Card
                  Card(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.blue[900]
                        : Colors.blue,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.18, // Adjust width based on screen size
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
                  // Second Card
                  Card(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.blue[900]
                        : Colors.blue,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.18, // Adjust width based on screen size
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
                  // Third Card
                  Card(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.blue[900]
                        : Colors.blue,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.18, // Adjust width based on screen size
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
                  // Fourth Card
                  Card(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.blue[900]
                        : Colors.blue,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.18, // Adjust width based on screen size
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
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.centerLeft,
              child: Text(
                "Keshvacredit Lenders",
                style: TextStyle(),
              ),
            ),
            SizedBox(height: 1),
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
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.blue,
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
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.blue,
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
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.blue,
                        child: Container(
                          width: 300,
                          height: 200,
                         child: Center(child: Text("Card 3"),),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Card(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.blue,
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
            Container(
              color: Colors.blue,
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Navigate to Home
                        },
                        child: Text('Home', style: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(width: 20),
                      TextButton(
                        onPressed: () {
                          // Navigate to About
                        },
                        child: Text('About', style: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(width: 20),
                      TextButton(
                        onPressed: () {
                          // Navigate to About
                        },
                        child: Text('About', style: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(width: 20),
                      TextButton(
                        onPressed: () {
                          // Navigate to About
                        },
                        child: Text('About', style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ],
              ),
            ),


          ],
        ),
      ),

    );
  }
}
