import 'package:flutter/material.dart';

class OffersPage extends StatefulWidget {
  const OffersPage({super.key});

  @override
  OffersPageState createState() => OffersPageState();
}

class OffersPageState extends State<OffersPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Offers",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: Container(
            color: const Color(0xFFE0E0E0),
            child: TabBar(
              controller: _tabController,
              indicator: BoxDecoration(
                color: Colors.blue,

                borderRadius: BorderRadius.circular(4),
              ),
              indicatorPadding: const EdgeInsets.symmetric(vertical: 8),
              labelPadding: const EdgeInsets.symmetric(vertical: 10),// Added vertical padding
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              tabs: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const Tab(text: "Personal loan"),
                ),
                SizedBox(

                  width: MediaQuery.of(context).size.width,

                  child: const Tab(text: "Credit card"),
                ),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          personalLoanTab(),
          const Center(child: Text("No credit card offers yet")),
        ],
      ),
    );
  }
  Widget personalLoanTab() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 200, // ✅ Adjust this height as needed
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.lightBlueAccent.shade100, Colors.white],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: SingleChildScrollView( // 🟢 Scrollable inside fixed height
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min, // 🟢 Important to respect size
                children: [
                  const Text(
                    "Financial Health",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.indigo),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Personal loan can help\nImprove your credit score.",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text("Get access to an easy loan application process\nwith no collateral."),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    child: const Text("Apply Now"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


}
