import 'package:flutter/material.dart';
import 'package:loanc_calculator/signup.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int p=0;
  int r=0;
  int n=0;
  
  double emi=0;
 void calculation() {
    setState(() {
      emi=p*r*n/100;
    });
  }

 
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
         inputField(Icons.money, "Loan Amount "),
         
      const SizedBox(
        height: 20,
      ),
         inputField(Icons.timer, " Loan tenure "),
         
      const SizedBox(
        height:10,
      ),
         inputField(Icons.payment, "Interest Rate"),
         
      
         
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
                  
                //  child:   const Center(
                //    child: Text("Calculate",
                //       style: TextStyle(
                //         color: Colors.white,
                //         fontSize: 20,
                //         fontWeight: FontWeight.bold,
                //       ),
                //      ),
                //  ),

                child: SizedBox(
                  height: 90,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      calculation();
                    },
                    style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Change color here
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),),),
                    child: const Text("Calculate",
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
         
      
         const Text("Monthly Payment",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
         ),
      
         // ignore: unnecessary_brace_in_string_interps
          Text('total rupppes to pay is -${emi}',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
         ),
    ],
    
  );
}
}