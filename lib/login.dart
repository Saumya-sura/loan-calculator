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
          const Text("Login",
            style: TextStyle(
              fontSize: 30,
              fontWeight:FontWeight.bold,

            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:30),
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
          ),
          const SizedBox(
            height: 100,
          ),
          inputField(Icons.email,"Abc@gmail.com"),
          const SizedBox(
            height: 40
          ),
          inputField(Icons.key,"AAA!123"),
          const SizedBox(
            height: 40,
          ),
           GestureDetector(
            onTap: ()
            {
              Navigator.of(context).pushNamed("/Calculator");
            },
             child: const Text("Skip",
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