import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),

    );
  }
    Widget content()
    {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Center(
              child: Container(
                height: 254,
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
                   Transform(transform:Matrix4.translationValues(0, -20, 0),

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
          const SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(

              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0,5)
              )
              ]
            ),
            child: const TextField(
            
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.email),
            
              ),
            ),
          )
        ],
      );
    }
  
}