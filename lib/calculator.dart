import 'dart:math';

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final TextEditingController p = TextEditingController();
  final TextEditingController n = TextEditingController();
  final TextEditingController r = TextEditingController();

  double emi = 0;

  void calculation() {
    setState(() {
      double principal = double.tryParse(p.text) ?? 0;
      double tenure = double.tryParse(n.text) ?? 0;
      double rate = double.tryParse(r.text) ?? 0;

      // Convert annual rate to monthly rate
      double monthlyRate = rate / 12 / 100;

      // Convert tenure from years to months
      int months = (tenure * 12).toInt();

      // Perform the EMI calculation
      emi = (principal * monthlyRate * (pow(1 + monthlyRate, months))) /
          ((pow(1 + monthlyRate, months)) - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Loan Calculator"),
      ),
      body: content(),
    );
  }

  Widget content() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 90,
            width: double.infinity,
            child: Image.asset("assets/images/car.png"),
          ),
          Transform(
            transform: Matrix4.translationValues(2, 3, 4),
            child: const Text(
              "Calculator",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          inputField(Icons.money, "Loan Amount", p),
          const SizedBox(
            height: 20,
          ),
          inputField(Icons.timer, "Loan tenure", n),
          const SizedBox(
            height: 10,
          ),
          inputField(Icons.payment, "Interest Rate", r),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Container(
              height: 30,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              child: SizedBox(
                height: 90,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    calculation();
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Calculate",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Text(
            "Monthly Payment",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Total amount to pay is - $emi',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget inputField(
      IconData icon, String labelText, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: Icon(icon),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
