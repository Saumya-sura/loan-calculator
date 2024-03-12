import 'package:flutter/material.dart';
import 'package:loanc_calculator/login.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Loan Calculator"),
        
      ),
body :content(),
    );
  }
  Widget content()
{
  return  Column(
    children: [
        Container(
          height: 90,
          width: double.infinity,
          child: Image.asset("assets/images/car.png"),
        ),

         Transform(
          transform: Matrix4.translationValues(2, 3, 4),
           child: const Text("Calculator",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
                   ),
         ),
      const SizedBox(
        height: 30,
      ),
         inputField(Icons.money, "enter amount "),
         
      const SizedBox(
        height: 20,
      ),
         inputField(Icons.timer, "years "),
         
      const SizedBox(
        height:20,
      ),
         inputField(Icons.payment, "To pay "),
         
      const SizedBox(
        height: 20,
      ),
         inputField(Icons.interests, "Intrest "),
         
      const SizedBox(
        height: 20,
      ),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal:40.0),
           child: Container(
            height: 30,
            width: double.infinity,
                   decoration: BoxDecoration(
            color:Colors.blue,
            borderRadius: BorderRadius.circular(30),
                   ),
                  
                 child:   const Center(
                   child: Text("Calculate",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                     ),
                 ),
           ),
         ),
         
      
         const Text("Monthly Payment",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
         ),
      
         const Text(" Rs 2000",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
         ),
    ],
    
  );
}
}