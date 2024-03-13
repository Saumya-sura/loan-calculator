


//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:loanc_calculator/calculator.dart';
import 'package:loanc_calculator/signup.dart';

import 'package:loanc_calculator/splash.dart';

void main()
{
  runApp(MaterialApp(
debugShowCheckedModeBanner: false,
routes: {

  "/":(context)=>const Splash(),
  //"/login":(context) => Login(),
  //'login': (context) =>const Login(),
  'signup':(context) => const Signup(),
  "/calculator":(context)=> const Calculator()

},

  ));
}