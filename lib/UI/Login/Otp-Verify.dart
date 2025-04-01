import 'package:flutter/material.dart';
import 'package:keshvacredit/UI/Home/Home.dart';
import 'package:pinput/pinput.dart';
import 'dart:async';

class Otp_verify extends StatefulWidget {
  const Otp_verify({super.key});

  @override
  _OtpVerifyState createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<Otp_verify> {
  TextEditingController otpController = TextEditingController();
  int _counter = 30; // Initial countdown time
  bool _isResendEnabled = false;
  bool _isChecked = false;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    _isResendEnabled = false;
    _counter = 30;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _isResendEnabled = true;
          _timer?.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.phone_android, size: 80, color: Colors.blue),
            const SizedBox(height: 20),
            const Text(
              "Verify your phone number",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text("Enter the 6-digit code sent to"),
            const Text(
              "+91 9306018195",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // OTP Input
            Pinput(
              length: 6,
              controller: otpController,
              keyboardType: TextInputType.number,
              pinAnimationType: PinAnimationType.fade,
              onCompleted: (pin) {
                print("Entered OTP: $pin");
              },
            ),
            const SizedBox(height: 20),

            // Resend OTP
            _isResendEnabled
                ? TextButton(
              onPressed: () {
                _startCountdown();
              },
              child: const Text("Resend OTP"),
            )
                : Text("Resend OTP in 00:${_counter.toString().padLeft(2, '0')}",
                style: const TextStyle(color: Colors.red)),

            const SizedBox(height: 20),

            // Checkbox
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                ),
                Expanded(
                  child: Text(
                    "I agree to the Privacy Policy & Terms.",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),

            // Verify Button
            ElevatedButton(
              onPressed: _isChecked
                  ? () {
                print("Verifying OTP: ${otpController.text}");
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=>Dashboard())
                );
              }
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                disabledBackgroundColor: Colors.grey,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text("Verify", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
