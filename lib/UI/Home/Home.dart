import 'package:flutter/material.dart';

import 'Offers.dart';

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

  get buttonColor => null;

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
                          ? Colors.blue[50]
                          : Colors.blue[50],
                      child: Center(
                        child: Text(
                          "D/A 200C+",
                          style: TextStyle(
                            color: Theme.of(context).brightness == Brightness.dark
                                ? Colors.black
                                : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),

                  ),
                  // Second Container
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 50,
                    child: Card(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.blue[50]
                          : Colors.blue[50],
                      child: Center(
                        child: Text(
                          "Banks 4+",
                          style: TextStyle(
                            color: Theme.of(context).brightness == Brightness.dark
                                ? Colors.black
                                : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Third Container
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 50,
                    child: Card(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.blue[50]
                          : Colors.blue[50],
                      child: Center(
                        child: Text(
                          "Lenders 5+",
                          style: TextStyle(
                            color: Theme.of(context).brightness == Brightness.dark
                                ? Colors.black
                                : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
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
              height: 100,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          width: 300,
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/background.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Get your instant loan now!",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // You can enable the image if needed
                              // Image.asset(
                              //   'assets/otp.png',
                              //   width: 50,
                              //   height: 50,
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),


                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          width: 300,
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/background.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Get your instant loan now!",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // You can enable the image if needed
                              // Image.asset(
                              //   'assets/otp.png',
                              //   width: 50,
                              //   height: 50,
                              // ),
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
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.centerLeft,
              child: Text(
                "Apply for a Product",
                style: TextStyle(),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 10, right: 20),


              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Even spacing between all items
                mainAxisSize: MainAxisSize.max,
                children: [
                  // First Card
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => OffersPage()),
                          );
                        },
                        splashColor: Colors.transparent,  // No ripple effect
                        highlightColor: Colors.transparent, // No highlight
                        hoverColor: Colors.transparent,    // No hover color on web/desktop
                        child: Card(
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.blue[50]
                              : Colors.blue[50],
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.18,
                            height: 80,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.card_giftcard,
                                  size: 30,
                                  color: Theme.of(context).brightness == Brightness.dark
                                      ? Colors.brown // Dark mode icon color
                                      : Colors.blue[900], // Light mode icon color
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 10), // Space between Card and Text

                      // Aligning text below the Card
                      Text(
                        textAlign: TextAlign.center,
                        "Offers",
                        style: TextStyle(
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black, // Text color for both modes
                          fontSize: 16,    fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(width: 10),
                  // Second Card
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        margin: EdgeInsets.only(top: 20),
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.blue[50]
                            : Colors.blue[50],
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.18, // Adjust width based on screen size
                          height: 80,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.credit_card,
                                size: 30,
                                color: Theme.of(context).brightness == Brightness.dark
                                    ? Colors.brown // Dark mode icon color
                                    : Colors.blue[900], // Light mode icon color
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 5), // Space between Card and Text

                      // Text below the Card
                      Text(
                        "Personal \n Loan",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black, // Text color for both modes
                          fontSize: 16,    fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(width: 10),
                  // Third Card
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        margin: EdgeInsets.only(top: 20),
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.blue[50]
                            : Colors.blue[50],
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.18, // Adjust width based on screen size
                          height: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.business,
                                size: 30,
                                color: Theme.of(context).brightness == Brightness.dark
                                    ? Colors.brown // Dark mode icon color
                                    : Colors.blue[900], // Light mode icon color
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 5), // Space between Card and Text

                      // Text below the Card
                      Text(
                        "Business\n Loan",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black, // Text color for both modes
                          fontSize: 16,    fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),


                  SizedBox(width: 10),
                  // Fourth Card
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        margin: EdgeInsets.only(top: 20),
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.blue[50]
                            : Colors.blue[50],
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.18, // Adjust width based on screen size
                          height: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                size: 30,
                                color: Theme.of(context).brightness == Brightness.dark
                                    ? Colors.brown // Dark mode icon color
                                    : Colors.blue[900], // Light mode icon color
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 5), // Space between Card and Text

                      // Text below the Card
                      Text(
                        "Credit\n Card",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black, // Text color for both modes
                          fontSize: 16,    fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )

                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(left: 10, right: 20),


              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Even spacing between all items
                mainAxisSize: MainAxisSize.max,
                children: [
                  // First Card
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => OffersPage()),
                          );
                        },
                        splashColor: Colors.transparent,  // No ripple effect
                        highlightColor: Colors.transparent, // No highlight
                        hoverColor: Colors.transparent,    // No hover color on web/desktop
                        child: Card(
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.blue[50]
                              : Colors.blue[50],
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.18,
                            height: 80,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.card_giftcard,
                                  size: 30,
                                  color: Theme.of(context).brightness == Brightness.dark
                                      ? Colors.brown // Dark mode icon color
                                      : Colors.blue[900], // Light mode icon color
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 10), // Space between Card and Text

                      // Aligning text below the Card
                      Text(
                        textAlign: TextAlign.center,
                        "Loan\n Process",
                        style: TextStyle(
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black, // Text color for both modes
                          fontSize: 16,    fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(width: 10),
                  // Second Card
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(

                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.blue[50]
                            : Colors.blue[50],
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.18, // Adjust width based on screen size
                          height: 80,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.credit_card,
                                size: 30,
                                color: Theme.of(context).brightness == Brightness.dark
                                    ? Colors.brown // Dark mode icon color
                                    : Colors.blue[900], // Light mode icon color
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 5), // Space between Card and Text

                      // Text below the Card
                      Text(
                        "Eligible\n Lenders",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black, // Text color for both modes
                          fontSize: 16,    fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(width: 10),
                  // Third Card
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        margin: EdgeInsets.only(bottom: 18),
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.blue[50]
                            : Colors.blue[50],
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.18, // Adjust width based on screen size
                          height: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.business,
                                size: 30,
                                color: Theme.of(context).brightness == Brightness.dark
                                    ? Colors.brown // Dark mode icon color
                                    : Colors.blue[900], // Light mode icon color
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 5), // Space between Card and Text

                      // Text below the Card
                      Text(
                        "Calculator",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black, // Text color for both modes
                          fontSize: 16,    fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),


                  SizedBox(width: 10),
                  // Fourth Card
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        margin: EdgeInsets.only(bottom: 15),
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.blue[50]
                            : Colors.blue[50],
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.18, // Adjust width based on screen size
                          height: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                size: 30,
                                color: Theme.of(context).brightness == Brightness.dark
                                    ? Colors.brown // Dark mode icon color
                                    : Colors.blue[900], // Light mode icon color
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 5), // Space between Card and Text

                      // Text below the Card
                      Text(
                        "Gold Loan",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black, // Text color for both modes
                          fontSize: 16,    fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )

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
                            ? Colors.blue[50]
                            : Colors.blue[50],
                        child: Container(
                          width: 300,
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/Hm_page-0001.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Center(child: Text("",style: TextStyle(color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.black
                              : Colors.black,  fontSize: 16),  )),
                        ),
                      ),
                    ),


                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Card(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.blue[50]
                            : Colors.blue[50],
                        child: Container(
                          width: 300,
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/Cl_page-0001.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Center(child: Text("", style: TextStyle(color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.black
                              : Colors.black,  fontSize: 16),)),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Card(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.blue[50]
                            : Colors.blue[50],
                        child: Container(
                          width: 300,
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/BL_page-0001.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                         child: Center(child: Text("", style: TextStyle(color: Theme.of(context).brightness == Brightness.dark
                             ? Colors.black
                             : Colors.black,  fontSize: 16),),),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Card(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.blue[50]
                            : Colors.blue[50],
                        child: Container(
                          width: 300,
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/personal_page-0001.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Center(child: Text("",style: TextStyle(color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.black
                              : Colors.black,  fontSize: 16),  )),
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
