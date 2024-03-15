// ignore_for_file: unnecessary_new, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:loanc_calculator/calculator.dart';
class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  content(),

    );
  }
    Widget content()
    {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Center(
              child: Container(
               height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                decoration: const BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.only(

                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )
                
                ),
                
                child: Column(
                  children: [
                    Image.asset("assets/images/car.png"),
                    //bottomoverflow
                   Transform(transform:Matrix4.translationValues(0, -5, 0),

                   child :const  Text("Welcome to Loan Calculator",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    )
                )
                  ],
                ),
              ),
            ),
          ),
          
          const Center(
            child:  Text("Signup",
              style: TextStyle(
                fontSize: 30,
                fontWeight:FontWeight.bold,
                
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
         /* Padding(
            padding: const EdgeInsets.symmetric(horizontal:5),
            child: Container(
              decoration: BoxDecoration(
            
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 5,
                offset: const Offset(0,5)
                )
                ]
              ),
              child: const TextField(
              
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.email),
              
                ),
              ),
            ),
          ),*/
          const SizedBox(
            height: 5,
          ),
          inputField(Icons.email,"Abc@gmail.com"),
        TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
          
          
        ),
           GestureDetector(
            onTap: ()
            {
               Navigator.push(
      context,
      // ignore: duplicate_ignore
      MaterialPageRoute(
        // ignore: unnecessary_new
        builder: (context) => new Calculator(),
      ),
               );
            },
             child: const Text("Continue",
                       style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
                       ),
                       
                       ),
           ),
        ],
      );
    }
  
}

Widget inputField(IconData icon,String hintText)
{
return  Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0),
            child: Container(
              decoration: BoxDecoration(
            
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 5,
                offset: const Offset(0,5)
                )
                ]
              ),
              child:  TextField(
              
                decoration: InputDecoration(
                  border: InputBorder.none,
                  // ignore: unnecessary_const
                 prefixIcon:  new Icon(icon),
                hintText: hintText),
              ),
            ),
          );

}
  