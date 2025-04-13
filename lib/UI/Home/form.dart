import 'package:flutter/material.dart';

void main() => runApp(LoanApp());

class LoanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoanFormPage(),
    );
  }
}

class LoanFormPage extends StatefulWidget {
  @override
  _LoanFormPageState createState() => _LoanFormPageState();
}

class _LoanFormPageState extends State<LoanFormPage> {
  String selectedGender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Speedy Loans, 70+ Choices!'),
        backgroundColor: Colors.indigo[900],
        leading: const BackButton(),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: Column(
            children: [
              const Text(
                'Opt for the ideal loan offer at lowest interest rates.',
                style: TextStyle(color: Colors.white70, fontSize: 12),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Expanded(
                    child: LinearProgressIndicator(
                      value: 0.5,
                      backgroundColor: Colors.grey,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text('Full Name*'),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your full name as per your PAN Card',
              ),
            ),
            const SizedBox(height: 16),
            const Text('Your Mobile Number*'),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: '+91 7496011732',
                prefixIcon: const Icon(Icons.lock_outline),
                filled: true,
                fillColor: Colors.blue[50],
              ),
            ),
            const SizedBox(height: 16),
            const Text('Your E-mail ID*'),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Enter your personal email id',
              ),
            ),
            const SizedBox(height: 24),
            const Text('Select Gender*'),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: selectedGender == 'Male' ? Colors.teal[50] : null,
                      side: BorderSide(color: selectedGender == 'Male' ? Colors.teal : Colors.grey),
                    ),
                    onPressed: () {
                      setState(() {
                        selectedGender = 'Male';
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (selectedGender == 'Male') const Icon(Icons.check, color: Colors.teal),
                        const SizedBox(width: 5),
                        const Text('Male'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: selectedGender == 'Female' ? Colors.teal[50] : null,
                      side: BorderSide(color: selectedGender == 'Female' ? Colors.teal : Colors.grey),
                    ),
                    onPressed: () {
                      setState(() {
                        selectedGender = 'Female';
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (selectedGender == 'Female') const Icon(Icons.check, color: Colors.teal),
                        const SizedBox(width: 5),
                        const Text('Female'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text('Required Loan Amount*'),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                prefixText: '₹',
                hintText: 'Enter required loan amount',
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Handle proceed
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text('Proceed'),
            ),
          ],
        ),
      ),
    );
  }
}
